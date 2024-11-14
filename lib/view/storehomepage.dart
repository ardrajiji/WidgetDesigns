import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_project/view/storeproductlimil.dart';
import 'package:flutter_project/widgets/storestack_widget.dart';



class HomepageStore extends StatelessWidget {
  const HomepageStore({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/cloths.webp', 
      'assets/images/gadgets.webp',
      'assets/images/jewellery.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.black,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
           
          },),
        
        actions: [
          IconButton(
            icon: const Icon(Icons.message_sharp, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //const SizedBox(height: 5),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                      height: 40,
                      width: 270,
                      //padding: const EdgeInsets.all(8.0),
                      //margin: const EdgeInsets.only(left: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search,
                           color: Colors.black,
                           size: 20,),
                          Text("Search..",
                          style: TextStyle(color: Colors.black, fontSize: 14),),
                        ],
                      ),
                      
                    ),
            ),
        
            const SizedBox(height: 10,),
            CarouselSlider(
              items: imageList.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 8,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
              ),
            ),
            const SizedBox(height: 20,),
            const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             CategoryWidget(
              image:"assets/icons/icons8-gadgets-50.png",
              category: 'Electronics',
              
             ),
             SizedBox(width: 30,),
              CategoryWidget(
                category: 'jewellery', 
                image: 'assets/icons/icons8-jewellery-100.png',
             ),
             SizedBox(width: 30,),
              CategoryWidget(
                category: 'Mens\nClothing', 
                image: 'assets/icons/icons8-mens-hoodie-50.png',
             ),
             SizedBox(width: 30,),
              CategoryWidget(
                category: 'Womens\nClothing', 
                image: 'assets/icons/icons8-womens-t-shirt-50.png',
             )
            ],
          ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best Sale Product',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold),
              ),
            ),
            const StoreProductLimit(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 252, 239, 239),
     items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(
        icon: Icon(Icons.home,
        color: Colors.black,
        size: 25,), 
        label: 'Home'),

      BottomNavigationBarItem(
        icon: Icon(Icons.local_mall_rounded,
        color: Colors.black,
        size: 25,), 
        label: 'Wallet',),


      BottomNavigationBarItem(
        icon: Icon(Icons.settings,
        color: Colors.black,
        size: 25,), 
        label: 'Settings'),
    ],
    
   ),

    );
  }
}
