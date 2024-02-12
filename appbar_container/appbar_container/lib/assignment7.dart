import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});
  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TRIP TO JUNGLE",
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.network("https://st.depositphotos.com/1927453/1975/i/450/depositphotos_19750405-stock-photo-alone-tree-on-meadow-at.jpg",
          height: 300,width: 150,),

          const SizedBox(height: 50,),

          Image.network("https://st.depositphotos.com/1927453/1975/i/450/depositphotos_19750405-stock-photo-alone-tree-on-meadow-at.jpg",
          height: 300,width: 150,),

          const SizedBox(height: 50,),
          
          Image.network("https://st.depositphotos.com/1927453/1975/i/450/depositphotos_19750405-stock-photo-alone-tree-on-meadow-at.jpg",
          height: 300,width: 150,),

          const SizedBox(height: 50,),
          
          Image.network("https://st.depositphotos.com/1927453/1975/i/450/depositphotos_19750405-stock-photo-alone-tree-on-meadow-at.jpg",
          height: 300,width: 150,),

          const SizedBox(height: 50,),
          
          Image.network("https://st.depositphotos.com/1927453/1975/i/450/depositphotos_19750405-stock-photo-alone-tree-on-meadow-at.jpg",
          height: 300,width: 150,),
        ]),
      ),
      ),
    );
  }
}