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
FutureOr<int?> telegramGroupId(TelegramGroupIdRef ref) async {
  final sb = ref.watch(supabaseProvider);
  final result = await sb.client
      .from('key_values')
      .select('value')
      .eq('key', 'telegram_group_id')
      .maybeSingle();

  return int.tryParse(result?['value'] ?? '');
}

@riverpod
class UpdateTelegramGroupId extends _$UpdateTelegramGroupId {
  @override
  ProviderStatus<void> build() => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({
    required int? groupId,
  }) async {
    return await perform(
      (state) async {
        final isAdmin = ref.read(isAdminProvider);
        if (isAdmin == false) {
          throw Exception('Unauthorized');
        }

        final sb = ref.read(supabaseProvider);
        await sb.client.from('key_values').upsert({
          'key': 'telegram_group_id',
          'value': groupId,
        });
      },
      onSuccess: (_) {
        ref.invalidate(telegramGroupIdProvider);
      },
    );
  }
}
