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
      home: Togglecolor(),
    );
  }
}

class Togglecolor extends StatefulWidget {
  const Togglecolor({super.key});

  @override
  State<Togglecolor> createState() => _TogglecolorState();
}

class _TogglecolorState extends State<Togglecolor> {
  int counterBox1 = -1;
  int counterBox2 = -1;

  Color box1Color() {
    if (counterBox1 == 0) {
      return Colors.green;
    } else if (counterBox1 == 1) {
      return Colors.blue;
    } else if (counterBox1 == 2) {
      return Colors.yellow;
    } else if (counterBox1 == 3) {
      return Colors.amber;
    } else {
      counterBox1 = -1;
      return Colors.red;
    }
  }

  Color box2Color() {
    if (counterBox2 == 0) {
      return Colors.green;
    } else if (counterBox2 == 1) {
      return Colors.blue;
    } else if (counterBox2 == 2) {
      return Colors.yellow;
    } else if (counterBox2 == 3) {
      return Colors.amber;
    } else {
      counterBox2 = -1;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TOGGLE_COLOR"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: box1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counterBox1++;
                    });
                  },
                  child: const Text("Button1")),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: box2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counterBox2++;
                    });
                  },
                  child: const Text("Button2")),
            ],
          ),
        ],
      ),
    );
  }
}
