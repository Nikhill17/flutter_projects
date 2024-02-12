import 'package:flutter/material.dart';
import 'package:stateful_apps/assignment3.dart';
import 'assignment1.dart';
import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment4(),
    );
  }
}
