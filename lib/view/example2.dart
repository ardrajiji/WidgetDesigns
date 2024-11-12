import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/widgets/day_widget.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color.fromARGB(255, 226, 231, 236),
                     
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        height: 50,
                        
                        "assets/images/user.png"),
                    ),
                 ),
                  const SizedBox(width: 80),
              
                 const Column(
                   children: [
                     Text("Hello, Sandra",
                       style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20),
                       ),
                  
                             
                        Text("Today November 25 ",
                        style: TextStyle(
                        fontSize: 13),),
                      ],
                           
                     ),
                      const SizedBox(width: 90), 
                      Container(
                          width: 36,
                          height:36,
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(23),
                            color: const Color.fromARGB(255, 243, 232, 232)),
                          child: const Icon(Icons.search),
                        ),
                      ],
                      ),
                  
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 35),
                      Container(
                        height: 160,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(2, 160, 255, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daily",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //SizedBox(height: 5),
                            Text(
                              "Challenge",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Do your plan before 9.00 AM",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Row(
                    children: [
                      DayWidget(
                        text1: "SUN",
                        day: "22",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "MON",
                        day: "23",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "TUE",
                        day: "24",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "WED",
                        day: "25",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "THU",
                        day: "26",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "FRI",
                        day: "27",
                       ),SizedBox(width: 9,),
                       DayWidget(
                        text1: "SAT",
                        day: "28",
                       ),SizedBox(width: 9,),
                       

                    ],
                    ),
                  ),
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text("Your plan",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,),
              ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 260,
                  width: 160,
                  decoration: 
                    const BoxDecoration
                    (color: Color.fromARGB(255, 249, 183, 84),
                    //borderRadius:BorderRadius.all(Radius.zero)
                    borderRadius: 
                    BorderRadius.all(Radius.circular(20)),
                    ),
                    child:   Padding(
                      padding: const EdgeInsets.all(8),
                     
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   const SizedBox(height: 20,),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape:WidgetStatePropertyAll(RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(25)))
                                         ),
                                     onPressed: (){
                      
                                  }, 
                                  child: const Text("Medium")),const SizedBox(height: 10,),
                                  const Text("YOGA Groug",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                                  const Text("25 NOV",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                                  const Text("14.00-15.00",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                                  const Text("A5 Room",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                                  const SizedBox(height: 15,),
                                   Row(
                                    children: [
                                      CircleAvatar(
                                       radius: 25,
                                          child: Image.asset(
                                            height: 25,

                                            "assets/images/user.png"),
                                        ),
                                        const SizedBox(width: 10,),
                                         const Column(
                                          children: [
                                            //CrossAxisAlignment:CrossAxisAlignment.start,
                                            Text("Trainer"),
                                            Text("Tiffany Way")
                                          ]
                                        )
                                    ],
                                  )
                                ],
                      ),
                    ),
                ),
              ),
             Column(
              children: [
                Container(
                  height: 140,
                  width: 160,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 136, 192, 235),
                  borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const SizedBox(height: 10,),
                         Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 230, 236),
                          borderRadius: BorderRadius.circular(15)),                         
                          child:const Center(
                            child: Text(
                              "Light"
                            ),
                          ),
                        
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Balance",style: TextStyle(fontSize: 20,),),
                            Text("25 NOV",style: TextStyle(fontSize: 15)),
                            Text("14.00-15.00",style: TextStyle(fontSize: 15),),
                                  
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 212, 167, 206),
                  borderRadius: BorderRadius.circular(10)),
                 child: const Padding(
                   padding: EdgeInsets.all(15.0),
                   child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.inbox),
                      ),SizedBox(width: 5,),
                      CircleAvatar(
                        child: Icon(Icons.screen_search_desktop),
                      ),SizedBox(width: 5,),
                      CircleAvatar(
                        child: Icon(Icons.access_time),
                      )
                    ],
                   ),
                 ),
                )
              ],
            )
            
            ],
          )


       ],
      ),     
    );
  }
}