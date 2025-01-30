import 'package:flutter/material.dart';

extension StateExtension on State<dynamic> {
  /// set state if the widget is mounted else just call the function
  void setStateIfMounted(VoidCallback fn) {
    if (mounted) {
      // ignore: invalid_use_of_protected_member
      setState(fn);
    } else {
      fn();
    }
  }

  ThemeData get theme => Theme.of(context);
  TextTheme get textTheme => theme.textTheme;
  bool get isDarkMode => theme.brightness == Brightness.dark;
  MediaQueryData get mediaQuery => MediaQuery.of(context);
  Size get mediaQuerySize => mediaQuery.size;

  /// get the context if the widget is mounted
  BuildContext? get asyncContext {
    if (mounted) return context;
    return null;
  }
}
