import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../exports.dart';
import '../../../providers/telegram_provider.dart';

class ConnectTelegramDialog extends ConsumerWidget {
  const ConnectTelegramDialog({super.key, required this.onConnected});

  /// Show dialog to connect to telegram
  static void show(
    BuildContext context, {
    required Future<String?> Function(int groupId) onConnected,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => ConnectTelegramDialog(
        onConnected: onConnected,
      ),
    );
  }

  final Future<String?> Function(int groupId) onConnected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final telegramAsync = ref.watch(teleDartProvider).requireValue;

    return AlertDialog(
      title: const Text('Connect to Telegram'),
      content: _Content(telegramAsync, onConnected),
    );
  }
}

class _Content extends HookConsumerWidget {
  const _Content(this.telegram, this.onConnected);

  final TeleDart telegram;
  final Future<String?> Function(int groupId) onConnected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final code = useMemoized(() => DateTime.now().millisecondsSinceEpoch);
    final joinGroupLink = "https://telegram.me/KFAMobileBot?startgroup=$code";
    final groupName = useState<String?>(null);
    final groupId = useState<int?>(null);
    final fakeLoading = useState(false);
    final hasError = useState(false);
    final teleDartMessage = useState<TeleDartMessage?>(null);

    useEffect(
      () {
        telegram.onCommand('start').listen((message) async {
          if (message.text == null) return;
          teleDartMessage.value = message;

          final resultCode = message.text!.split(' ').lastOrNull ?? '';
          if (resultCode == code.toString()) {
            fakeLoading.value = true;
            groupName.value = message.chat.title;
            groupId.value = message.chat.id;
            await Future.delayed(const Duration(milliseconds: 300));
            fakeLoading.value = false;
          }
        });

        return null;
      },
      const [],
    );

    final scanner = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          '1. Please scan the QR Code or click the link below \n2. Then select the chat group you want to connect with.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 250,
          height: 250,
          child: QrImageView(
            data: joinGroupLink,
            version: QrVersions.auto,
            embeddedImage: Assets.images.kFALogo.provider(),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'or',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: () async {
            final uri = Uri.parse(joinGroupLink);
            await launchUrl(
              uri,
              mode: LaunchMode.externalApplication,
            );
          },
          icon: const Icon(Icons.link),
          label: const Text(
            'Click this link',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Please note that for the connection to be successful, \ndo not close the application until the connection is completed!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.error,
            fontSize: 12,
          ),
        ),
      ],
    );

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (fakeLoading.value)
            const SizedBox(
              height: 300,
              child: Center(child: CircularProgressIndicator()),
            )
          else if (groupId.value != null) ...[
            const Icon(
              Icons.check_circle_outline,
              size: 88,
              color: Colors.green,
            ),
            const SizedBox(height: 8),
            Text(
              groupName.value ?? "--",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () async {
                  hasError.value = false;
                  final close = BotToast.showLoading();
                  final result = await onConnected(groupId.value!);
                  close();
                  if (result != null && context.mounted) {
                    BotToast.showText(text: result);
                    hasError.value = true;
                    return;
                  }

                  if (context.mounted) {
                    if (teleDartMessage.value != null) {
                      teleDartMessage.value!.reply(
                        'Congratulations! You have successfully connected to the system...',
                      );
                    }
                    Navigator.of(context).pop();
                  }
                },
                child: Text(hasError.value ? "Try again" : 'Connect'),
              ),
            ),
          ] else
            scanner,
        ],
      ),
    );
  }
}
