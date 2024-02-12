import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TWO CONTAINERS",
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.deepPurple,
      
          ),

          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
      
          )
        ]),
      ),
    );
  }
}