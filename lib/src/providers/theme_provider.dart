import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/src/providers/cache_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppThemeMode extends _$AppThemeMode {
  @override
  ThemeMode build() {
    final prefs = ref.watch(sharePrefProvider);
    ref.listenSelf((pre, next) {
      if (next != pre) {
        prefs.setString('theme_mode_name', next.name);
      }
    });
    final themeName = prefs.getString('theme_mode_name');
    if (themeName == null) {
      return ThemeMode.light;
    }
    return ThemeMode.values.byName(themeName);
  }

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
