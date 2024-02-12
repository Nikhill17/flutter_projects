import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  bool _isPost1liked = false;
  bool _isPost2liked = false;
  bool _isPost3liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      /*body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                width: double.infinity,
              ),
              Row(
                children :[
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(onPressed: () {},
                   icon: const Icon(
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed: (){},
                    icon:const Icon(
                      Icons.send,
                    ),
                    ),
                ],
                ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                width: double.infinity,
              ),
              Row(
                children :[
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(onPressed: () {},
                   icon: const Icon(
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed: (){},
                    icon:const Icon(
                      Icons.send,
                    ),
                    ),
                ],
                ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                width: double.infinity,
              ),
              Row(
                children :[
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(onPressed: () {},
                   icon: const Icon(
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed: (){},
                    icon:const Icon(
                      Icons.send,
                    ),
                    ),
                ],
                ),
        ],
      ),
        ],
      ),*/

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  width: double.infinity,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                           _isPost1liked = !_isPost1liked;
                        });
                      },

                      icon: Icon(
                        _isPost1liked
                        ? Icons.favorite_rounded
                        : Icons.favorite_outline_outlined,

                        color:_isPost1liked? Colors.red: Colors.black,

                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_outlined,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  width: double.infinity,
                ),
                Row(
                  children: [
                    
                    IconButton(
                      onPressed: () {
                        setState(() {
                           _isPost2liked = !_isPost2liked;
                        });
                      },
                        icon: Icon(
                        _isPost2liked
                        ? Icons.favorite_rounded
                        : Icons.favorite_outline_outlined,

                        color:_isPost2liked? Colors.red: Colors.black,
                      ),
                    ),

                     IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),

                    //const SizedBox(
                    //width: 210,
                    // ),
                    const Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_outlined,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  width: double.infinity,
                ),
                Row(
                  children: [
                   
                    IconButton(
                      onPressed: () {
                        setState(() {
                           _isPost3liked = !_isPost3liked;
                        });
                      },

                      icon: Icon(
                        _isPost3liked
                        ? Icons.favorite_rounded
                        : Icons.favorite_outline_outlined,

                        color:_isPost3liked? Colors.red: Colors.black,
                      ),
                    ),

                     IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_outlined,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
