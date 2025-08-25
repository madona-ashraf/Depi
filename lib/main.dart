import 'package:flutter/material.dart';
import 'package:test/Task%209_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}