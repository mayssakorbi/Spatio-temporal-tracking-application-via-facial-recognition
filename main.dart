import 'package:flutter/material.dart';
 import 'welcome_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'check up',
      debugShowCheckedModeBanner: false, // enlever le banner au coin
      home:WelcomePageLoadingScreen(),
    );
  }
}
