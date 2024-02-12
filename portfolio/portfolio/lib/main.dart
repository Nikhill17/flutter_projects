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
      title: 'Portfolio',
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int _counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PORTFOLIO"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Text("ADD"),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (_counter >= 0)
                  ? const Text("Name : Nikhil Bibhishan Somavanshi")
                  : Container(),
              const SizedBox(height: 10),
              (_counter >= 1)
                  ? Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/pass_photo.jpg"),
                    )
                  : Container(),
              const SizedBox(
                height: 50,
              ),
              (_counter >= 2)
                  ? const Text("College: TSSM BSCOER")
                  : Container(),
              const SizedBox(height: 10),
              (_counter >= 3)
                  ? Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/tssm_logo.jpg"),
                    )
                  : Container(),
              const SizedBox(
                height: 50,
              ),
              (_counter >= 4)
                  ? const Text("Dream Company: Microsoft")
                  : Container(),
              const SizedBox(height: 10),
              (_counter >= 5)
                  ? Container(
                      height: 100,
                      width: 100,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/1024px-Microsoft_logo.svg.png"),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
