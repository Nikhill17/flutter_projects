import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TRIP TO TORNA",
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("assets/images/image1.jpg",
          height: 150,width:150),

          const SizedBox(height: 50,),

          Image.asset("assets/images/image2.jpg",
          height: 150,width:150),

          const SizedBox(height: 50,),
          
          Image.asset("assets/images/image3.jpg",
          height: 150,width:150),
        ]),
      ),
    );
  }
}