import 'package:flutter/material.dart';
import 'package:flutter_project/view/category.dart';

class NewCard extends StatelessWidget {
  final String  textstock;
  final String category;
  final String location;

  const NewCard({
  super.key,
  required this.textstock,
  required this.category,
  required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
       width: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 215, 198, 196),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              
                Column(
          //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                       child: Image.asset(
                                     //height: 140,
                                     width: 100,
                                     fit:BoxFit.contain,
                                     "assets/images/tshit.webp"),
                     ),
                   const Padding(
                     padding: EdgeInsets.only(left: 35),
                     child: Text("Unisex T-shirt White",
                                   style: TextStyle(fontSize: 14,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold),
                                   ),
                   ),
                  ],
                ),
             
              
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Stock :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 20,),
                        Text("12 in Stock",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Category :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 20,),
                        Text("T Shirt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Location :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 20,),
                        Text(" 3 stores",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 150, 134, 237),
                            borderRadius: BorderRadius.all(Radius.circular(15)) ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Active",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10),
                            ),
                          ),  
                        ),
                        const SizedBox(width: 20,),
                         Container(
                          height:30 ,
                          width: 30,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 150, 134, 237),
                            borderRadius: BorderRadius.all(Radius.circular(15)) ),
                          child: const Icon(Icons.navigate_next)),
                      ],
                    )
                  ],
                )
            ],
          ),
        ],
      ),
    );
  }
}
