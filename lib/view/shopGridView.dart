import 'package:flutter/material.dart';
import 'package:flutter_project/view/gridView.dart';

class ShopGridView extends StatelessWidget {
  final List<Map<String, dynamic>> goldNecklaces = [
    {
      'name': 'Classic Gold Necklace',
      'image': 'assets/images/tshit.webp',
      'weight': '10g',
      'price': 1000,
    },
    {
      'name': 'Elegant Gold Chain',
      'image': 'assets/images/tshit.webp',
      'weight': '15g',
      'price': 1200,
    },
      {
      'name': 'Elegant Gold Chain',
      'image': 'assets/images/tshit.webp',
      'weight': '15g',
      'price': 1200,
    },
    // Add other items as needed
  ];
   ShopGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("GridView Builder"),
      ),
      body:  Column(
                children: [
                   Expanded(
                    child:GridView.builder(
                      gridDelegate: const 
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      ), 
                      itemCount:goldNecklaces.length ,
                    itemBuilder: (context, index) {
                      final item = goldNecklaces[index];

                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: gridView(
                          image:item['image'] ,
                          name: item['name'],
                          price: item['price'].toString(),
                        ),
                      );
                    },)),
                ],
      ),
    );
  }
}