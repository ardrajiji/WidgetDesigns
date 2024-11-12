import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomepageStore extends StatelessWidget {
   final List<String> imageList = [
    'flutter_project/assets/images/cloths.webp', 
    'flutter_project/assets/images/gadgets.webp',
    'flutter_project/assets/images/jewellery.jpg',
  ];
 HomepageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          actions: [
         IconButton(
          icon: const Icon(Icons.message_sharp, color: Colors.black),
          onPressed: () {
           },),

           IconButton(
          icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
          onPressed: () {
           },),
       
           
           ]
        ),

        body: Center(
          
        ),
      );
  }
}