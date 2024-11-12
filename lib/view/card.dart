import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final double height;
  final double width;
   const CardWidget( 
    {super.key, 
      required this.image,
      required  this.name,
      required this.price,
      required this.height,
      required this.width
   }
 );

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          height: 200,
          width: 120,
          decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
              //  height: 100,
                width: 70,
                fit: BoxFit.contain,
                image),
                const SizedBox(height: 5,),
                 Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style: const TextStyle(color: Colors.white),),
                          Text(price,style: const TextStyle(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),
                
          
            ]
          ),
        );
     
  }
}