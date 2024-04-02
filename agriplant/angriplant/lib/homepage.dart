import 'package:angriplant/cart.dart';
import 'package:angriplant/garlicseedling.dart';
import 'package:angriplant/limeseedlings.dart';
import 'package:angriplant/onionseedlings.dart';
import 'package:angriplant/riceseeds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State createState() => _HomepageState();
}

class _HomepageState extends State {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const Padding(padding: EdgeInsets.only(left: 20)),
            const SizedBox(
              height: 40,
            ),

            Row(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[100], shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Nikhil!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("Enjoy your services!")
                  ],
                ),

                //const Spacer(),
                const SizedBox(
                  width: 70,
                ),

                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[100], shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),

            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: 270,
                      height: 60,
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 32,
                            ),
                            hintText: "Search",
                            label: const Text(
                              "Search here...",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.green),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          //shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.swap_horiz,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(110, 239, 129, 0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      const Text(
                        "Free Consultation",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Get free support from\nour customer service",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 21),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          "Call Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        height: 160,
                        width: 70,
                        decoration: BoxDecoration(
                            //color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/premium-photo/3d-call-center-employee-pointing-down-blank-space_168450-170.jpg"))),
                      )
                    ],
                  )
                ],
              ),
            ),

            ///////////////////////////////////////////////////////

            ///row//

            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text("Featured Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),

            Row(
              children: [
                //////////////////////First card/////////////////////
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Rice()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 0, bottom: 20),
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                      //color: Colors.grey[100],
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 189, 189, 189)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 105,
                              width: 158,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://img.freepik.com/free-photo/sack-rice-seed-with-white-rice-small-wooden-spoon-rice-plant_1150-35744.jpg")),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: Text(
                            "Rice Seeds",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 5, left: 10)),
                            const Text("Rs.15/",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            const Text(
                              "kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  //shape: BoxShape.circle
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //const SizedBox(width: 5,),
                ///////////////////////////////////////Second Card///////////////////////
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Lime()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 20, right: 10, left: 10, bottom: 20),
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                      //color: Colors.grey[100],
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 189, 189, 189)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 105,
                              width: 158,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                    "https://media.istockphoto.com/id/1358672660/photo/growing-lime.jpg?s=612x612&w=0&k=20&c=eBA8fy_4jfEp6uWbBI6mywvEjVHhK2eUpjRuBzwejbM=",
                                  )),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: Text(
                            "Lime",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 5, left: 10)),
                            const Text("Rs.5/",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            const Text(
                              "pcs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  //shape: BoxShape.circle
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                ////////////////////////////////////////Third card////////////////////////
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Garlic()));
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 0, left: 20, right: 0, bottom: 20),
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                      //color: Colors.grey[100],
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 189, 189, 189)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 105,
                              width: 158,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://media.istockphoto.com/id/532117006/photo/close-up-of-garlic-plantation.jpg?s=612x612&w=0&k=20&c=FpwhDBE_3hj477KVG2oyzuo2GsUcS4NgH_MkgVvoqzc=")),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: Text(
                            "Garlic Seeds",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 5, left: 10)),
                            const Text("Rs.10/",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            const Text(
                              "pcs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  //shape: BoxShape.circle
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //const SizedBox(width: 5,),
                ////////////////////////////Fourth card/////////
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Onion()));
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 0, right: 10, left: 10, bottom: 20),
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                      //color: Colors.grey[100],
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 189, 189, 189)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 105,
                              width: 158,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://media.istockphoto.com/id/1283398674/photo/fresh-harvest-in-the-garden.jpg?s=612x612&w=0&k=20&c=vK3nDwFFU6mbmSJdf6nMKCV3QfajcEt3oEjPe4QBY-8=")),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: Text(
                            "Onion Seeds",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 5, left: 10)),
                            const Text("Rs.7/",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            const Text(
                              "pcs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  //shape: BoxShape.circle
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            if (value == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Services"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
