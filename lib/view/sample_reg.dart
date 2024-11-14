import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(238, 172,26, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text('Registration',
                style: TextStyle(fontSize: 30, 
                color: Colors.black,
                fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 40,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 15),
               ) ),
               const SizedBox(height: 10,),
               const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 15),
               ) ),
               const SizedBox(height: 10,),
               const TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 15),
                  suffixIcon: Icon(Icons.visibility_off,size: 15,)
               ) ),
               const SizedBox(height: 10,),
               const TextField(
                decoration: InputDecoration(
                  hintText: " Confirm Password",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 15),
                  suffixIcon: Icon(Icons.visibility_off,size: 15,)
               ) ),
               const SizedBox(height: 30,),
               Container(
                height: 50,
                width: 400,
                 margin:  const EdgeInsets.all(1),
                     decoration: BoxDecoration(
                     border: Border.all(color: Colors.black, width: 1),
                     borderRadius:  const BorderRadius.all(Radius.circular(5),),
                     color: Colors.black),
                     child: const Center(
                     child: Text("Submit",
                      style: TextStyle(
                      color: Color.fromRGBO(238, 172,26, 1),
                      fontSize: 15),),
                     ),
                         

               )

               
            ]
          ),
        ),

      ),

      
    );
  }
}