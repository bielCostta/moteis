import 'package:flutter/material.dart';
import 'package:moteis/go_now/presentation/page/go_now_page.dart';
import 'package:moteis/shared/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: AppTheme.textTheme(),
      ),
      home: GoNowPage(),
    );
  }
}
