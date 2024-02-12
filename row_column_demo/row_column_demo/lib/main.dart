import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Container(
          width: double.infinity,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.orange,
              ),
        
              Container(
                height: 100,
                width: 300,
                color: Colors.white,
              ),
        
              Container(
                height: 100,
                width: 300,
                color: Colors.green,
              ),
            ],
          ),
        )
      ),
    );
  }
}
