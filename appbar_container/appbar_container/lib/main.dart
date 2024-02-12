import 'package:flutter/material.dart';
import 'assignment1.dart';
import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';
import 'assignment5.dart';
import 'assignment6.dart';
import 'assignment7.dart';
import 'padding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PaddingAssignment(),
    );
  }
}
