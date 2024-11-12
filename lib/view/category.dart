import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 241, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              const Column(
                children: [
                  Text(
                    "All Offers",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              //SizedBox(width: 15), // Spacing between items in the Row
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Phall_curry_image_under_400kb.png",
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Phall Curry",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 plate",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            "180",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(width: 5), // Optional space between price texts
                          Text(
                            "200",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
