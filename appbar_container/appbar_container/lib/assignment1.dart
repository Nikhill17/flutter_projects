import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2Web",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
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
