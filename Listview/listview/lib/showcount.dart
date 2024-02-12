import 'package:flutter/material.dart';
class ShowCount extends StatefulWidget {
  const ShowCount({super.key});
  @override
  State<ShowCount> createState() => _ShowCount();
}

class _ShowCount extends State<ShowCount> {
  int count = 0;
  List<int> counter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List View"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            counter.add(count);
          });
        },
        child: const Text("ADD"),
      ),
      body: ListView.builder(
          itemCount: counter.length,
          itemBuilder: (context, index) {
            return Column(children: [
              Container(
                alignment: Alignment.center,
                color: Colors.amber,
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 200,
                child: Text(
                  "${counter[index]}"
                ),
              ),
            ]);
          }),
    );
  }
}
