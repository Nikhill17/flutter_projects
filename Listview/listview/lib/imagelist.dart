import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  const ImageList({super.key});
  @override
  State<ImageList> createState() => _ImagelistState();
}

class _ImagelistState extends State<ImageList> {
  List<String> imageList = [
    "https://images.unsplash.com/photo-1577537500263-da8814d8e040?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1578824381648-52f000bb5f9f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1577369850389-32be613b186f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1575641248750-4b81f06e2360?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image View"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Text("ADD"),
      ),
      body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Image.network(
                imageList[index],
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }
}
