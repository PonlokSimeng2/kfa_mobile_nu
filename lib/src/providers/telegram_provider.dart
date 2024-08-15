import 'package:kimapp/kimapp.dart';
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
