import 'dart:developer';

import 'package:kfa_mobile_nu/src/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  String? build() {
    final session = ref.watch(supabaseProvider).client.auth.currentSession;
    if (session == null) return null;
    return session.user.id;
  }

  Future<String?> login(String email, String password) async {
    try {
      await ref
          .watch(supabaseProvider)
          .client
          .auth
          .signInWithPassword(email: email, password: password);
      ref.invalidateSelf();
      return null;
    } catch (e) {
      log("Error login", error: e);
      return e.toString();
    }
  }

  Future<void> signOut() async {
    await ref.watch(supabaseProvider).client.auth.signOut();
    ref.invalidateSelf();
  }

  Future<String?> signUp({
    required String email,
    required String password,
    required String? photo,
    required String firstName,
    required String lastName,
    required String phone,
  }) async {
    try {
      await ref.watch(supabaseProvider).client.auth.signUp(
        email: email,
        password: password,
        data: {
          'photo': photo,
          'first_name': firstName,
          'last_name': lastName,
          'phone': phone,
        },
      );

      ref.invalidateSelf();
      return null;
    } catch (e) {
      log("Error sign up", error: e);
      return e.toString();
    }
  }
}
