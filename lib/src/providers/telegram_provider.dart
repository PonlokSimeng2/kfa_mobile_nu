import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

part 'telegram_provider.g.dart';

@riverpod
Future<TeleDart> teleDart(TeleDartRef ref) async {
  ref.cacheTime(const Duration(minutes: 5));

  const token = '6981985426:AAEnmigEgz396rMc_yuHguk2gTQ9-aMZhQs';
  final username = (await Telegram(token).getMe()).username;
  final tele = TeleDart(token, Event(username!));
  tele.start();
  ref.onDispose(tele.close);
  return tele;
}

@riverpod
FutureOr<String?> telegramBotToken(TelegramBotTokenRef ref) async {
  final sb = ref.watch(supabaseProvider);
  final result = await sb.client
      .from('key_values')
      .select('value')
      .eq('key', 'telegram_bot_token')
      .maybeSingle();

  return result?['value'];
}

@riverpod
class UpdateTelegramBot extends _$UpdateTelegramBot {
  @override
  ProviderStatus<void> build() => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({
    required String? botToken,
  }) async {
    return await perform(
      (state) async {
        final isAdmin = ref.read(isAdminProvider);
        if (isAdmin == false) {
          throw Exception('Unauthorized');
        }

        final sb = ref.read(supabaseProvider);
        await sb.client.from('key_values').upsert({
          'key': 'telegram_bot_token',
          'value': botToken,
        });
      },
    );
  }
}
