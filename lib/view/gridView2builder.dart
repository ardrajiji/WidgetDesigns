import 'package:flutter/material.dart';
import 'package:flutter_project/view/gridView.dart';
import 'package:flutter_project/view/gridView2.dart';
import 'package:flutter_project/view/newCard.dart';

class GridView2Builder extends StatelessWidget {
   final List<Map<String, dynamic>> songdetails = [
    {
      'name1': 'Gadgets',
      'image': 'assets/icons/icons8-gadgets-50.png',
      'name2': '10g',
     
    },
    {
      'name1': 'Grocery',
      'image': 'assets/icons/icons8-grocery-50.png',
      'name2': '15g',
      
    },
      {
      'name1': 'Jewellery',
      'image': 'assets/icons/icons8-jewellery-100.png',
      'name2': '15g',
      
    },
    {
      'name1': 'Vehicle',
      'image': 'assets/icons/icons8-vehicle-50.png',
      'name2': '15g',
      
    },
     // Add other items as needed
  ];

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
 GridView2Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Colors.grey[200],
      appBar: AppBar(
        title: const Text("Second GridView builder",
        style: TextStyle(fontSize: 25,
        color: Colors.white),),
        backgroundColor:Colors.black ,
       ),
      body: Center(
        child: Column(
          
          children: [
            const SizedBox(height: 20,),
            Expanded(
                    child:
                  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      //  crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 1.5, 

                      ),
                      itemCount: songdetails.length,
                      itemBuilder: (context, index) {
                        final item = songdetails[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView2(
                            image: item['image'],
                            name1: item['name1'],
                          ),
                        );
                      },
                    ),

                    ),

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
          ],
        ),
        
      ),
    );
  }
}