import 'package:angriplant/cart.dart';
import 'package:angriplant/homepage.dart';

import 'package:flutter/material.dart';

class Onion extends StatefulWidget {
  const Onion({super.key});
  @override
  State createState() => _OnionState();
}

int onionPrice = 7;
int numOfPieces = 0;

class _OnionState extends State {
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
                      "https://media.istockphoto.com/id/1283398674/photo/fresh-harvest-in-the-garden.jpg?s=612x612&w=0&k=20&c=vK3nDwFFU6mbmSJdf6nMKCV3QfajcEt3oEjPe4QBY-8=")),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Onion Seedlings",
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
              "Rs$onionPrice/pcs",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ]),
          Row(children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            const Text("4.5(456)"),
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
              "Onion seedlings emerge from the earth with a determined yet delicate demeanor, their slender green shoots poking through the soil's surface in search of sunlight. At this early stage of growth, they are characterized by their slender, grass-like leaves that unfurl gracefully, showcasing a vibrant green hue. These young plants possess a subtle onion scent, a precursor to the robust aroma they will develop as they mature."),
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

         
        ],
      ),
    );
  }
}
