import 'package:flutter/material.dart';
import 'package:gsfiap/modules/login.dart';
import 'package:gsfiap/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: LoginPage(),
    );
  }
}
