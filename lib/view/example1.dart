import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/widgets/card_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                   const Text('Hello, Poul ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  const Icon(Icons.back_hand,size: 40, color: Colors.amber,),
                  const SizedBox(width: 160,),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 86, 82, 82),
                    child: Image.asset(
                      height: 20,
                      width: 35,
                      "assets/icons/icons8-notification-64.png",),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                      
                ],
              ),
            ),
           const SizedBox( height: 50,),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             CardWidgets(
              text: 'Emotinal Balance',
             ),
             SizedBox(width: 30,),
              CardWidgets(
              text: 'CALM RELAXATION',
             )
            ],
          ),
          const SizedBox(height: 15,),
           const Padding(
             padding: EdgeInsets.all(18.0),
             child: Row(
              children: [
                Text("Special for you ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(width: 100,),
                Text("See all", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Icon(Icons.navigate_next),
              ],
            ),
           ),
           Padding(
             padding:  const EdgeInsets.all(21),
             child: Container(
               height: 150,
               width: 350,
               decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
               color: const Color.fromARGB(255, 172, 212, 244)),
           
               child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                   const Text(" Morning Gratitude ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   Row(children: [
                    ElevatedButton(
                 
                      onPressed: () {
                      
                    }, child: const Text("5 mins")),
                      const SizedBox(width: 15,),
                    
                    ElevatedButton(onPressed: () {
                      
                    }, child: const Text("Morning")),
                    const SizedBox(width: 60,),
                    const CircleAvatar(
                    
                      radius: 25,
                      child: Icon(Icons.skip_next_rounded),
                    )
                   ],)
                ],
               )
               
             ),
           )
          ],
        ),
      )
      
    );
  }
}