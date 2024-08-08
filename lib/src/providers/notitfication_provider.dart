import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  NotificationNotifier(this._prefs)
      : super(NotificationState(
            isEnabled: _prefs.getBool('notifications_enabled') ?? true));

  void toggle() {
    final newState = state.copyWith(isEnabled: !state.isEnabled);
    _prefs.setBool('notifications_enabled', newState.isEnabled);
    state = newState;
  }
}

final notificationProvider =
    StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return NotificationNotifier(prefs);
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Should be overridden in main.dart');
});
