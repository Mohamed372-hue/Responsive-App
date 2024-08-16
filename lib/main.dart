import 'package:flutter/material.dart';
import 'package:resposive_app/constant/const.dart';
import 'package:resposive_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF2697FF),
          scaffoldBackgroundColor: backgroundColor),
      home: const MainScreen(),
    );
  }
}
