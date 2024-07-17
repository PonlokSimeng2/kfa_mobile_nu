import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/user_model.dart';
import 'auth_provider.dart';

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

@riverpod
bool isAdmin(IsAdminRef ref) {
  final isAdmin = ref.watch(currentUserProvider.select((v) => v.valueOrNull?.isAdmin ?? false));
  return isAdmin;
}
