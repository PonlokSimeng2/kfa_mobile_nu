import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../exports.dart';
import '../../../providers/telegram_provider.dart';

class ConnectTelegramDialog extends ConsumerStatefulWidget {
  const ConnectTelegramDialog({super.key, required this.onConnected});

  final Future<String?> Function(int groupId) onConnected;

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

  @override
  ConsumerState<ConnectTelegramDialog> createState() =>
      _ConnectTelegramDialogState();
}

class _ConnectTelegramDialogState extends ConsumerState<ConnectTelegramDialog> {
  late TeleDart _telegram;
  String? _joinGroupLink;
  String? _groupName;
  int? _groupId;
  bool _isLoading = false;
  bool _hasError = false;
  TeleDartMessage? _teleDartMessage;
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    _initTelegram();
  }

  Future<void> _initTelegram() async {
    final telegramAsync = await ref.read(teleDartProvider.future);
    _telegram = telegramAsync;
    setState(() {
      _joinGroupLink = "https://t.me/kfaadminbot?startgroup";
    });
    _setupWebhook();
  }

  void _setupWebhook() {
    _streamSubscription = _telegram.onMessage().listen((event) async {
      if (event.newChatMembers != null && event.newChatMembers!.isNotEmpty) {
        final isBot = event.newChatMembers!.firstOrNullWhere((member) {
              return member.username == 'kfaadminbot';
            }) !=
            null;

        if (isBot) {
          final message = event;
          _teleDartMessage = message;
          setState(() {
            _isLoading = true;
          });
          await Future.delayed(const Duration(milliseconds: 300));
          setState(() {
            _groupName = message.chat.title;
            _groupId = message.chat.id;
            _isLoading = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  Widget _buildScanner() {
    if (_joinGroupLink == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
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
            data: _joinGroupLink!,
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
            final uri = Uri.parse(_joinGroupLink!);
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
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Connect to Telegram'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_isLoading)
              const SizedBox(
                height: 300,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (_groupId != null) ...[
              const Icon(
                Icons.check_circle_outline,
                size: 88,
                color: Colors.green,
              ),
              const SizedBox(height: 8),
              Text(
                _groupName ?? "--",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () async {
                    setState(() {
                      _hasError = false;
                    });
                    final close = BotToast.showLoading();
                    final result = await widget.onConnected(_groupId!);
                    close();
                    if (result != null && mounted) {
                      BotToast.showText(text: result);
                      setState(() {
                        _hasError = true;
                      });
                      return;
                    }

                    if (mounted) {
                      if (_teleDartMessage != null) {
                        _teleDartMessage!.reply(
                          'Congratulations! You have successfully connected to the system...',
                        );
                      }
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(_hasError ? "Try again" : 'Connect'),
                ),
              ),
            ] else
              _buildScanner(),
          ],
        ),
      ),
    );
  }
}
