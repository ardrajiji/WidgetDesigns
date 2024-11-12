import 'dart:ffi';

import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  final String image;
  final String name;
  final String price;

   const gridView({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15),),
              child: Image.asset(image,
              height: 120,
              fit: BoxFit.fill,),
            ),
             

              Column(
                children: [
                  Text(name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15),),
                  Row(
                    children: [
                      const SizedBox(width: 17,),
                      const Icon(Icons.currency_rupee_sharp),
                      Text(price,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),),
                    ],
                  )
                          ],
              ),
              
          ]
        ),
    );
  }
}