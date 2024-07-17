import 'dart:developer';

import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'supabase_provider.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  String? build() {
    final session = ref.watch(supabaseProvider).client.auth.currentSession;
    if (session == null) return null;
    return session.user.id;
  }

  Future<void> _initializeOneSignal(String userId) async {
    await OneSignal.login(userId);
  }

  Future<String?> login(String email, String password) async {
    try {
      final result = await ref
          .watch(supabaseProvider)
          .client
          .auth
          .signInWithPassword(email: email, password: password);
      ref.invalidateSelf();
      await _initializeOneSignal(result.user!.id);
      return null;
    } catch (e) {
      log("Error login", error: e);
      return e.toString();
    }
  }

  Future<void> signOut() async {
    await ref.watch(supabaseProvider).client.auth.signOut();
    await OneSignal.logout();
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
      final result = await ref.watch(supabaseProvider).client.auth.signUp(
        email: email,
        password: password,
        data: {
          'photo': photo,
          'first_name': firstName,
          'last_name': lastName,
          'phone': phone,
        },
      );

      await _initializeOneSignal(result.user!.id);

      ref.invalidateSelf();
      return null;
    } catch (e) {
      log("Error sign up", error: e);
      return e.toString();
    }
  }
}
