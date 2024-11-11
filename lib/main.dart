import 'package:flutter/material.dart';
import 'package:untitled2/pages/splash_page.dart';
import 'package:untitled2/screens/layout_screen.dart';
import 'package:untitled2/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      debugShowCheckedModeBanner: false,
      home:LayoutScreen(),
    );
  }
}































