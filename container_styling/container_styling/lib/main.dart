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
      home: ContainerStyling(),
    );
  }
}

class ContainerStyling extends StatefulWidget {
  const ContainerStyling({super.key});

  @override
  State createState() => _ContainerStylingState();
}

class _ContainerStylingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styling"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blue, width: 5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.deepPurple,
                      offset: Offset(30, 30),
                      blurRadius: 8),
                  BoxShadow(
                      color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
                  BoxShadow(
                      color: Colors.green,
                      offset: Offset(10, 10),
                      blurRadius: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
