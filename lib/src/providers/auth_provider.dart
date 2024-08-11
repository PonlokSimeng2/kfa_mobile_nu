import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
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
    if (kIsWeb) return;

    await OneSignal.login(userId);
  }

  Future<String?> login(String email, String password) async {
    try {
      final result = await ref
          .watch(supabaseProvider)
          .client
          .auth
          .signInWithPassword(email: email, password: password);
      final userId = result.user!.id;
      await _ensureAdmin(userId);
      ref.invalidateSelf();
      await _initializeOneSignal(result.user!.id);
      return null;
    } catch (e) {
      log("Error login", error: e);
      return e.toString();
    }
  }

  Future<void> _clearFcmToken(String userId) async {
    if (!kIsWeb) return;
    final sb = ref.read(supabaseProvider);
    await sb.client.from('users').update({'fcm_token': null}).eq('id', state!);
  }

  Future<void> _ensureAdmin(String userId) async {
    final userDetail = await getUser(ref, userId);
    if (userDetail == null || userDetail.isAdmin == false) {
      await signOut();
      throw 'Invalid user';
    }
  }

  Future<void> signOut() async {
    await ref.read(supabaseProvider).client.auth.signOut();
    await _clearFcmToken(state!);
    if (!kIsWeb) {
      await OneSignal.logout();
    }
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
      if (kIsWeb) {
        return "Admin is not allowed to sign up";
      }

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
