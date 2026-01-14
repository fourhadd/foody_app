import 'package:flutter/material.dart';
import 'splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}

void main() {
  runApp(const MyApp());
}
