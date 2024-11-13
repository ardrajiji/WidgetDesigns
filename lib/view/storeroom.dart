import 'package:flutter/material.dart';
import 'package:flutter_project/view/models/productmodel.dart';
import 'package:flutter_project/view/services/electronicService.dart';
import 'package:flutter_project/view/store.dart';

import 'services/productservice.dart';

class StoreRoom extends StatelessWidget {
 const StoreRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
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
      body:  Center(
        child: Column(
          children: [
            
            FutureBuilder<List<ProductModel>>(
              future: getAllProducts(),
              builder: (context, snapshot) {
                // Loading State
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // Error State
            if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            }

            // Empty Response data array
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text("No products found"),
              );
            }

            // Success State
            List<ProductModel> products = snapshot.data!.toList();
            return Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                   mainAxisSpacing: 5,
                  childAspectRatio: .7, 
              ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final item = products[index];
                  return
                 Padding(
                   padding: const EdgeInsets.all(3),
                   child: Store(
                    image: item.image!,
                    name : item.title!,
                    price: item.price.toString(),
                    rating: item.rating!, 
                    //count:item.rating!.count!
                  ),
                 );
                },
              ),
                        );
              },
            ),
            
          ],
        )
      ),

    );
  }
}