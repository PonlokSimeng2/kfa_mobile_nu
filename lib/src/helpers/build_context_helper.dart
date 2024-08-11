import 'package:flutter/material.dart';

extension BuildContextHelper on BuildContext {
  Future<dynamic> push(Widget Function(BuildContext context) screen) {
    return Navigator.push(this, MaterialPageRoute(builder: screen));
  }

  Future<dynamic> pushReplace(Widget Function(BuildContext context) screen) {
    Navigator.popUntil(this, (route) => route.isFirst);
    return Navigator.pushReplacement(this, MaterialPageRoute(builder: screen));
  }

  bool get isLargeScreen {
    return MediaQuery.sizeOf(this).width > 600;
  }

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Color get scaffoldBackgroundColor {
    return Theme.of(this).scaffoldBackgroundColor;
  }

  Color get primaryColor {
    return Theme.of(this).primaryColor;
  }

  EdgeInsetsGeometry get responsiveMargin =>
      EdgeInsets.all(isLargeScreen ? 0 : 16).copyWith(top: 16);
}
