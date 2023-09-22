import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFBFBFB),
      ),
      home: const Scaffold(
        body: SafeArea(child: BottomNavigation()),
      ),
    );
  }
}
