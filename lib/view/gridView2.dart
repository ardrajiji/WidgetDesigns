import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  final String image;
  final String name1;

  const GridView2({
    super.key,
    required this.image,
    required this.name1,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 4, // Adds shadow for a "card" effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: 50,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name1,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
