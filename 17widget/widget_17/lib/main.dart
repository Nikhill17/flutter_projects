import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Youtube());
  }
}

class Youtube extends StatefulWidget {
  const Youtube({super.key});
  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  List<String> imageList = [
    "https://i.ytimg.com/vi/km45w9JZy04/maxresdefault.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "YouTube",
          // selectionColor: Colors.black,
        ),
        leading: const Icon(Icons.play_arrow,color: Colors.white,size: 30,),
        actions: const [
          Icon(Icons.broadcast_on_personal_outlined),
          SizedBox(width: 5,),
          Icon(Icons.notification_add_outlined),
          SizedBox(width: 5,),
          Icon(Icons.search),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.stop),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "History",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    height: 120,
                    width: 200,
                    child: Image.network(
                        "https://i.ytimg.com/vi/nU5oWfUWEGo/maxresdefault.jpg"),
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    child: Image.network(
                        "https://i.ytimg.com/vi/1VGOghLPX78/sddefault.jpg"),
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    child: Image.network(
                        "https://media.licdn.com/dms/image/D5612AQEvuK-23omyIA/article-cover_image-shrink_720_1280/0/1676103952310?e=2147483647&v=beta&t=JJ8Q-FW4WoR5nAxuXKsM_WLhfrP2CJSfWAqQIPuyTDQ"),
                  ),
                ]),
              ),
              Row(
                children: [
                  Container(
                    height: 250,
                    width: 410,
                    child: Image.network(
                        "https://i.ytimg.com/vi/xrR3xQNeB_Y/maxresdefault.jpg"),
                  )
                ],
              ),
              const Text(
                  "Sasta Shark Tank ep:125,Pehle toh sabse bahut saari maafiya itna late lekin ab se puri ..."),
              ElevatedButton(
                  onPressed: () {}, child: const Center(child: Text("Play"))),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 410,
                    child: Image.asset("assets/images/pushpa.jpg"),
                  )
                ],
              ),
              const Text(
                  "Sony TV ka naya show Shark Tank mein jab aya Pushpa..!, Watch this funny cross-over video of Shark Tank and Pushpa by Khaas Re TV."),
              ElevatedButton(
                  onPressed: () {}, child: const Center(child: Text("Play"))),

                  Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 410,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqA9Rdd4Rg-EHHNr0xMHHoSumikkekcWAw9w&usqp=CAU"),
                  )
                ],
              ),
              const Text(
                  "Shark Tank India season 3 promo: Unique DIY kit brand starts a war between Namita Thapar, Aman Gupta and Anupam Mittal"),
              ElevatedButton(
                  onPressed: () {}, child: const Center(child: Text("Play"))),
            ],
          ),
        ],
      ),
    );
  }
}
