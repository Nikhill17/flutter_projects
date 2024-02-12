import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{

    const Assignment3({super.key});

    @override

    State<Assignment3> createState()=>_Assignment3State();
}

class _Assignment3State extends State<Assignment3>{

      int? selectedIndex =0;

      final List<String> imageList = [

        "https://media.istockphoto.com/id/1194408359/photo/india-flag-flying-high-blue-sky-tricolour-flag.jpg?b=1&s=170667a&w=0&k=20&c=F61rNWdVxAv4muy_j3pQNCA0dvs39z0LCiHb_x3oXK0=",

        "https://images.unsplash.com/photo-1532375810709-75b1da00537c?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",

        "https://images.unsplash.com/photo-1579596249184-a56e5c60f62d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZmxhZ3xlbnwwfHwwfHx8MA%3D%3D",

        "https://images.pexels.com/photos/672630/pexels-photo-672630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"

      ];

      void showNextImage(){

          setState(() {

                selectedIndex = selectedIndex! +1;
          });

          print(selectedIndex);
          if(selectedIndex==4){

              selectedIndex=0;
          }
      }

      @override

      Widget build(BuildContext context){

          return Scaffold(
            appBar: AppBar(
              title: const Text("Indian Flag Photos"),
            ),
            
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(

                      imageList[selectedIndex!],
                      width: 300,
                      height: 300,

                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  
                  ElevatedButton(
                    onPressed: showNextImage ,
                   child: const Text("Next")
                   ),

                    const SizedBox(
                    height: 20,
                  ),
                  
                  ElevatedButton(
                    onPressed:(){ setState(() {
                      selectedIndex =0;
                    }); 
                    },
                   child: const Text("Reset")
                   ),

                ],
              ),
            ),

          );
      }
}