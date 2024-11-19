import 'package:flutter/material.dart';
import 'package:flutter_project/view/models/productmodel.dart';

class SaleScreen extends StatelessWidget {
  final int id;
  final String image;
  final String name;
  final String price;
  final Rating rating;
  const SaleScreen({super.key,
  required this.id,
  required this.image,
  required this.name,
  required this.price,
  required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           
          },
        ),
       actions: [
        IconButton(
          icon: const Icon(Icons.favorite, color: Colors.red),
          onPressed: () {
           
          },
        ),
         IconButton(
          icon: const Icon(Icons.share, color: Colors.black),
          onPressed: () {
           
          },
        ),
         IconButton(
          icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
          onPressed: () {
           
          },
        ),
       ],
      ),
      body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(image),
                  ),
                  const SizedBox(height: 10,),
                   const Align(
                    alignment: Alignment.bottomLeft,
                     child: Text(t,
                                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
                   const Align(
                    alignment: Alignment.bottomLeft,
                     child: Text("Crewneck Tshirt",
                                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                   const SizedBox(height: 15,),
              
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Total Price",
                                      style: TextStyle(fontSize: 15,),),
                    ),
              
                  const Row(
                    children: [
                      Icon(Icons.attach_money,
                      color: Colors.blue,),
              
              
                       Text("180.00",
                      style: TextStyle(fontSize: 20,
                      color: Colors.blue,
                      )),
                    ],
                  ),const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star,
                      color: Colors.yellow,),
              
                      Text("4.9 Ratings · ",
                      style: TextStyle(fontSize: 15),),
              
                      Text("2.3k+ Ratings · ",
                      style: TextStyle(fontSize: 15),),
              
                      Text("2.9k+ Sold ",
                      style: TextStyle(fontSize: 15),),
                    ],
                  ),const SizedBox(height: 25,),
              
                  Container(
                    height: 50,
                    width: 360,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15),),
                      color: Color.fromARGB(26, 161, 150, 150)),
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Brand: ",
                          style:TextStyle(fontSize: 15,) ,),

                          Text("ChArmkpR",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold),),
                          SizedBox(width: 80,),

                          Text("Color: ",
                          style:TextStyle(fontSize: 15,) ,),

                          Text("Aprikot",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold),),
                        ],
                      ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  //     ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     minimumSize: const Size(100, 50), // Width and height
                  //     iconColor:const Color.fromRGBO(74, 178,153, 1) 
                      
                  //   ),
                  //   child: const Text('1'),
                  // ),
                    Container(
                      height: 60,
                      width: 70,
                      decoration: const BoxDecoration(
                        color:Color.fromRGBO(74, 178,153, 1),
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.zero,
                        topLeft: Radius.zero,
                        topRight: Radius.zero,),),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.shopping_bag_outlined, 
                             color: Colors.white),
                             Text("1",
                             style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                             ),)
                            
                          ],
                        ),
                        )
                    ,
                    Container(
                      height: 60,
                      width: 100,
                      decoration:  const BoxDecoration(
                        color:Colors.black,
                        borderRadius:BorderRadius.only(
                          topLeft:Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5))),
                          child: const Center(
                            child: Text("Buy Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                          )


                    )
                   ],
                  )
                  
                ],
              ),
            ),
            ),
    );
  }
}