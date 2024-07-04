import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'user_provider.g.dart';

const _userTable = "users";

@riverpod
FutureOr<UserModel?> currentUser(CurrentUserRef ref) async {
  final userId = ref.watch(authProvider);
  if (userId == null) return null;

  final sb = ref.watch(supabaseProvider).client;
  final json = await sb.from(_userTable).select().eq('id', userId).single();
  return UserModel.fromJson(json);
}
