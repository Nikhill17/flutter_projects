

import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
 const  Assignment1({super.key});

  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Netflix",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.red,
      ),

      body: SingleChildScrollView(
        child: Column(children: [
           const Text(
            "MOVIES",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20,
           ),
           ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 250,
                    width: 180,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://marketplace.canva.com/EAFVCFkAg3w/1/0/1131w/canva-red-and-black-horror-movie-poster-AOBSIAmLWOs.jpg",
                    height: 250,
                    width: 180,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://img.freepik.com/premium-psd/poster-design-photo-manipulation-template_528542-1447.jpg",
                    height: 250,
                    width: 180,
                  ),
                ],
              )),

              const SizedBox(height: 20,),

              const Text(
            "WEB SERIES",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20,
           ),
           ),

              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    height: 200,
                    width: 150,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    height: 200,
                    width: 150,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    height: 200,
                    width: 150,
                  ),
                ],
              )),

              const SizedBox(height: 20,),

              const Text(
            "MOST POPULAR",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20,
           ),
           ),

              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    height: 200,
                    width: 150,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    height: 200,
                    width: 150,
                  ),
                  const SizedBox(width: 5,),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    height: 200,
                    width: 150,
                  ),
                ],
              )),

        ],
        ),
      ),
    );
  }
}
