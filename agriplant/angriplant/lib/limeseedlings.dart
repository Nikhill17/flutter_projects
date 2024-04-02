import 'package:angriplant/cart.dart';
import 'package:angriplant/homepage.dart';

import 'package:flutter/material.dart';

class Lime extends StatefulWidget {
  const Lime({super.key});
  @override
  State createState() => _LimeState();
}

int limePrice = 5;
int numOfPieces = 0;

class _LimeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                 onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  });
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              const Text(
                "Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.bookmark_outline,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            height: 240,
            width: 200,
            decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.greenAccent,
              //     offset: Offset(0, 10),
              //     blurRadius: 5,
              //   )
              // ],
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/1358672660/photo/growing-lime.jpg?s=612x612&w=0&k=20&c=eBA8fy_4jfEp6uWbBI6mywvEjVHhK2eUpjRuBzwejbM=")),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Lime Seedlings",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(children: [
            const Text(
              "Available in stock",
              style: TextStyle(
                fontSize: 17,
                color: Colors.green,
              ),
            ),
            const Spacer(),
            Text(
              "Rs$limePrice/pcs",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ]),
          Row(children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            const Text("4.8(169)"),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (numOfPieces > 0) {
                      numOfPieces = numOfPieces - 1;
                    }
                  });
                },
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.green[600],
                )),
            Text(
              "$numOfPieces pcs",
              style: const TextStyle(fontSize: 18),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    numOfPieces = numOfPieces + 1;
                  });
                },
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.green[600],
                )),
          ]),
          const Text(
            "Description",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const Text(
              "Lime seedlings are the young, tender beginnings of lime trees, emerging from seeds planted in well-draining soil. These seedlings, known for their fast growth rate, can quickly reach several feet in height within a year under favorable conditions. To nurture their growth, lime seedlings require consistent watering to maintain moist soil, but they should not be left waterlogged."),
          const SizedBox(height: 20),
          const Text(
            "Related Products",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU5T7HiAUve8may-LDrBdgxYGYz_jDtcktIQ&usqp=CAU"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://kjcdn.gumlet.io/media/37695/fruits.png?w=480&dpr=2.6"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.thetreecenter.com/c/uploads/chokeberry-1-450x450.webp"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlALySuBBgB5U3Vk0KE1mVwtvAerTZGkbHzw&usqp=CAU"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://kisanvedika.bighaat.com/wp-content/uploads/2023/04/papaya-papaya-g36eb8f1c8_1280.jpg"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.kekkilaprofessional.com/wp-content/uploads/sites/6/2022/06/Berries_Strawberry_tunnel_pro_03-424x380-1-1.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text(
              "Add to Cart",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )

          //     ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [Row(
          //         children: [
          //           Container(
          //             height: 250,
          //             width: 250,
          //             child: Image.network("https://www.plantsguru.com/image/cache/data/Fruit%20Plants/plantsguru-fruitplants-mausambi-200x200.gif"),
          // //             decoration: BoxDecoration(
          // //   image: const DecorationImage(
          // //       image: NetworkImage(
          // //           "https://media.istockphoto.com/id/1358672660/photo/growing-lime.jpg?s=612x612&w=0&k=20&c=eBA8fy_4jfEp6uWbBI6mywvEjVHhK2eUpjRuBzwejbM=")),
          // //   borderRadius: BorderRadius.circular(20.0),
          // // ),
          //           )
          //         ],
          //       )],
          //     )
        ],
      ),
    );
  }
}
