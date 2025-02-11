import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ///
  /// Get [MediaQueryData] from current context
  ///
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}
