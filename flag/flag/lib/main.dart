import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
          color: Colors.blue[100],
          width: double.infinity,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                children: [
                  Container(
                    height: 500,
                    width: 10,
                    color: Colors.black,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.orange,
                  ),
        
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.white,
                    child: Image.network("https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg"),
                  ),
        
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ), 
        )
      ),
    );
  }
}
