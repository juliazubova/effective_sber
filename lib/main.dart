import 'package:flutter/material.dart';
import 'package:sber/screens/main_screen.dart';
import 'package:sber/theme/theme.dart';

void main() {
  runApp(const SberApp());
}

class SberApp extends StatelessWidget {
  const SberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const MainScreen(),
    );
  }
}