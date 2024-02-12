import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});
  
  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CORE2WEB"),
        centerTitle: true,
        // backgroundColor: Colors.black,
        actions: const [
          Spacer(),
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
          Icon(
            Icons.send,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}