import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheet(),
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State createState() => _BottomSheetState();
}

class _BottomSheetState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const Column(
                children: [
                  Text("Create Task",style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  ),),
                  
                  SizedBox(height:10),
                  TextField(
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              );
            });
      }),
    );
  }
}
