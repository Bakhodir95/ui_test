import 'package:flutter/material.dart';
import 'package:ui_test/views/screens/home.dart';
import 'package:ui_test/views/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(245, 248, 246, 246),
      ),
      home: const HomeScreen(),
    );
  }
}
