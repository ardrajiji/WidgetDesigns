import 'package:flutter/material.dart';
import 'package:flutter_project/view/models/productmodel.dart';

class Store extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final Rating rating;


  const Store({super.key,
  required this.image,
  required this.name,
  required this.price,
  required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 90,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 251, 248, 248),
        borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15),),
              child: Image.network(image,
              height: 100,
              fit: BoxFit.fill,),
            ),
             

              Column(
                children: [
                  Text(name,
                       style: const TextStyle(
                       color: Colors.black,
                       fontSize: 15),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.star,
                      color: Colors.yellow,),

                      const SizedBox(width: 10,),
                      Text(rating.rate.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 12),),
                      const Text("|"),

                      Text(rating.count.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 12),),
                      const SizedBox(width: 30,),


                      const Icon(Icons.currency_rupee_sharp,

                      color: Colors.blue),
                      Text(price,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,),),
                    ],
                  )
                          ],
              ),
              
          ]
        ),
    );
  }
}