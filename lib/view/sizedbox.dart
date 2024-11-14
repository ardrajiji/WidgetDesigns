import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("SizedBox  Example",
        style: TextStyle(
          color: Colors.white,),)
        ),
      body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //define sizedBox
          SizedBox(
            width: 200.0, //Adds horizontal  space of 200 pixels
            height: 100.0, //Adds vertical space of 100 pixels
            child: Card(
              color: Colors.yellowAccent,
              child: Center(
                child: Text(" OCIUZ ACADEMY",
                style: TextStyle(
                  color: Colors.black, fontSize: 20.0),),
              ),
            ),
          ),

          // Constructors
         
        ],
      ),
    )
    );
  }
}
