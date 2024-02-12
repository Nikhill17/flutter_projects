
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indian Flag',
      home: IndianFlag(),
    );
  }
}

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int _counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flag of India"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _counter++;
        });
      },
      child: const Text("ADD"),
      ),

      body:Container(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_counter>=0)
            ? Container(
              height: 500,
              width: 20,
              color: Colors.black,
            ):
            Container(),

            Column(
              children: [
                (_counter>=1)
                ?Container(
                  height: 80,
                  width: 250,
                  color: Colors.orange,
                )
                :Container(),


            (_counter>=2)
            ? Container(
              height: 80,
              width: 250,
              color: Colors.white,
              child:
              (_counter>=4)
              ? Image.network("https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg"):
              Container(),
            )
            :Container(),

            (_counter>=3)
            ? Container(
              height: 80,
              width: 250,
              color:Colors.green
            ):
            Container(),
              ],
            )
          ],
        ),
      )
    );
  }
}
