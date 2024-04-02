import 'package:angriplant/cart.dart';
import 'package:angriplant/homepage.dart';

import 'package:flutter/material.dart';

class Garlic extends StatefulWidget {
  const Garlic({super.key});
  @override
  State createState() => _GarlicState();
}

int garlicPrice = 10;
int numOfPieces = 0;

class _GarlicState extends State {
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
                      "https://media.istockphoto.com/id/532117006/photo/close-up-of-garlic-plantation.jpg?s=612x612&w=0&k=20&c=FpwhDBE_3hj477KVG2oyzuo2GsUcS4NgH_MkgVvoqzc=")),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Garlic Seedlings",
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
              "Rs$garlicPrice/pcs",
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
              "Garlic seedlings emerge from the soil with a delicate yet resilient presence, their slender green shoots reaching eagerly towards the light. At this early stage, they exude a subtle fragrance that hints at the pungent, earthy aroma they will develop as they mature. Each seedling bears a cluster of glossy, narrow leaves that gracefully unfurl, forming a verdant canopy atop a slender stem.  "),
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
