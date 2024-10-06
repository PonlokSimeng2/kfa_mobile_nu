import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/cache_provider.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationState {
  final bool isEnabled;

  NotificationState({required this.isEnabled});

  NotificationState copyWith({bool? isEnabled}) {
    return NotificationState(
      isEnabled: isEnabled ?? this.isEnabled,
    );
  }
}

class NotificationNotifier extends StateNotifier<NotificationState> {
  final SharedPreferences _prefs;

  final Ref ref;

  NotificationNotifier(this._prefs, this.ref)
      : super(
          NotificationState(
            isEnabled: _prefs.getBool('notifications_enabled') ?? true,
          ),
        );

  void setNotificationState(bool isEnabled) {
    final newState = state.copyWith(isEnabled: isEnabled);
    _prefs.setBool('notifications_enabled', newState.isEnabled);
    state = newState;
  }

  void toggle() async {
    if (!state.isEnabled) {
      final userId = ref.read(authProvider);
      if (userId != null) {
        await OneSignal.login(userId);
      }
    } else {
      await OneSignal.logout();
    }

    final newState = state.copyWith(isEnabled: !state.isEnabled);
    _prefs.setBool('notifications_enabled', newState.isEnabled);
    state = newState;
  }
}

final notificationProvider =
    StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final prefs = ref.watch(sharePrefProvider);
  return NotificationNotifier(prefs, ref);
});
