import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(2, 147, 147, 1),
            shape: BoxShape.circle,
            border:
                Border.all(width: 5, color: const Color.fromRGBO(0, 0, 0, 1)),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(-20, -20),
                blurRadius: 40,
                //spreadRadius: 20,
              ),
              
            ],
          ),
         child: Image.network("https://img.freepik.com/premium-vector/list-paper-note-office-stationery-spiral-notebook_538002-1684.jpg",
          ),
        )),
      ),
    );
  }
}
