import 'package:flutter/material.dart';
import 'package:flutter_project/view/card.dart';
import 'package:flutter_project/view/newCard.dart';

class MarketingPage extends StatelessWidget {
  final List<Map<String, dynamic>> goldNecklaces = [
    {
      'name': 'Classic Gold Necklace',
      'image': 'assets/icons/icons8-apple-50.png',
      'weight': '10g',
      'price': 1000,
    },
    {
      'name': 'Elegant Gold Chain',
      'image': 'assets/icons/icons8-apple-50.png',
      'weight': '15g',
      'price': 1200,
    },
      {
      'name': 'Elegant Gold Chain',
      'image': 'assets/icons/icons8-apple-50.png',
      'weight': '15g',
      'price': 1200,
    },
    // Add other items as needed
  ];

  MarketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ListViewBuilder"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: goldNecklaces.length,
              
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final item = goldNecklaces[index];
                return
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: NewCard(
                  category: item['image'],
                  location: item['name'],
                  textstock: item['weight'],
                    
                               ),
               );
              },
            ),
          ),
          // GridView.builder(
          //   gridDelegate: cr, 
          // itemBuilder: (context, index) {
          //   final item = goldNecklaces[index];
          //   return  CardWidget(
          //           height: 100, // Set desired height here
          //           width: MediaQuery.of(context).size.width * 0.9, // Set desired width here
          //           image: item['image'],
          //           name: item['name'],
          //           price: item['price'].toString(),
          //         ),
          // },)
        ],
      ),
    );
  }
}
