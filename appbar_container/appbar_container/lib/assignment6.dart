import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});
  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TEN SCROLLABLE CONTAINERS",
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: 
        SingleChildScrollView(
          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),

          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),

          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),


        ]),
        ),
      ),
    );
  }
}