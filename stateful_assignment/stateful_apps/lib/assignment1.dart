import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int? _count = 0;

  void _printTabvalue() {
    setState(() {
      _count = _count! + 2;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Click button to print table values",
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "$_count",
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: _printTabvalue,
          child: const Text("Print"),
        )
      ])),
    );
  }
}
