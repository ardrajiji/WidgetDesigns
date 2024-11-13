import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  final String image;

  const CategoryWidget({super.key,
  required this.category,
  required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white,
      // decoration: BoxDecoration(
      // border: Border.all(style: BorderStyle.solid),
      // ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              child: Image.asset(image,
              height: 35,
              width: 35,
              color: Colors.black,),
            ),
            Text(category,style: const TextStyle(
              fontSize: 10,fontWeight: FontWeight.bold),),
        ]
      )
    );
  }
}