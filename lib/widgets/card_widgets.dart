import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  final String text;
  const CardWidgets({super.key,
  
  required this.text});

  @override
  Widget build(BuildContext context) {
    return   Container(
                decoration: const BoxDecoration(borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
                color: Colors.black),
            
                height: 150,
                width: 120,
                child:   Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                    Text(text,
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white))
                    ]
                  ),
                ),
        
              );
  }
}