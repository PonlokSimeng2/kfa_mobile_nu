import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/providers/notitfication_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
    ref.read(notificationProvider.notifier).setNotificationState(true);
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

  Future<void> _ensureAdmin(String userId) async {
    if (!kIsWeb) return;

    final userDetail = await getUser(ref, userId);
    if (userDetail == null || userDetail.isAdmin == false) {
      await signOut();
      throw 'Invalid user';
    }
  }

  Future<void> signOut() async {
    await ref.read(supabaseProvider).client.auth.signOut();
    if (!kIsWeb) {
      await OneSignal.logout();
    }
    ref.invalidateSelf();
  }

  Future<String?> forgotPassword(String email) async {
    try {
      final supabase = ref.watch(supabaseProvider).client;
      await supabase.auth.resetPasswordForEmail(email);
      return null;
    } catch (e) {
      log("Error forgot password", error: e);
      return e.toString();
    }
  }

  Future<String?> verifyOtp(String email, String otp) async {
    try {
      final supabase = ref.watch(supabaseProvider).client;
      final result = await supabase.auth.verifyOTP(
        type: OtpType.signup,
        token: otp,
        email: email,
      );
      final userId = result.user!.id;
      await _ensureAdmin(userId);
      ref.invalidateSelf();
      await _initializeOneSignal(result.user!.id);
      return null;
    } catch (e) {
      log("Error verify otp", error: e);
      return e.toString();
    }
  }

  Future<String?> updatePassword(String newPassword) async {
    try {
      final supabase = ref.watch(supabaseProvider).client;
      await supabase.auth.updateUser(
        UserAttributes(password: newPassword),
      );

      return null;
    } catch (e) {
      log("Error updating password", error: e);
      return e.toString();
    }
  }

  Future<String?> updateUserPassword({
    required String userId,
    required String newPassword,
  }) async {
    try {
      final adminClient = SupabaseClient(
        supabaseUrl,
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFnaXJ4a3hrdXZxaHVhemtwYXl0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxOTczODAxNywiZXhwIjoyMDM1MzE0MDE3fQ.MUcljuzfbdNhLSclfrp43mEFeUGoSae_LskZnsomlcM',
      );

      await adminClient.auth.admin.updateUserById(
        userId,
        attributes: AdminUserAttributes(
          password: newPassword,
        ),
      );

      return null;
    } catch (e) {
      log("Error updating password", error: e);
      return e.toString();
    }
  }

  Future<String?> verifyOtpForgotPassword(String email, String otp) async {
    try {
      final supabase = ref.watch(supabaseProvider).client;
      final result = await supabase.auth.verifyOTP(
        type: OtpType.recovery,
        token: otp,
        email: email,
      );
      final userId = result.user!.id;
      await _ensureAdmin(userId);
      ref.invalidateSelf();
      await _initializeOneSignal(result.user!.id);
      return null;
    } catch (e) {
      log("Error verify otp", error: e);
      return e.toString();
    }
  }

  Future<void> resendOtp(String email) async {
    final supabase = ref.watch(supabaseProvider).client;
    await supabase.auth.resend(type: OtpType.signup, email: email);
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

      final supabase = ref.watch(supabaseProvider).client;

      final user = await supabase
          .from('users')
          .select('*')
          .eq('email', email)
          .maybeSingle();
      if (user != null) {
        return "User with this email already exists.";
      }

      try {
        final result = await supabase.auth.signUp(
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
        if (e.toString().contains('User already registered')) {
          // Check if the user is already registered but not confirmed
          final existingUser = await supabase.auth.signInWithPassword(
            email: email,
            password: password,
          );

          if (existingUser.user != null &&
              existingUser.user!.confirmationSentAt == null) {
            // User exists but email is not confirmed, resend confirmation email
            await resendOtp(email);
            return "Email confirmation resent. Please check your inbox.";
          } else {
            // User already exists and is confirmed
            return "User with this email already exists.";
          }
        } else {
          // Other errors
          rethrow;
        }
        rethrow;
      }
    } catch (e) {
      log("Error sign up", error: e);
      return e.toString();
    }
  }
}
