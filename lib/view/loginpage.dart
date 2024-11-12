import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: const Color.fromRGBO(244, 243, 241, 1),
    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text('Hello Again !', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
          const Text('Welcome back you ve \n        been missed!', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


          const SizedBox(
            height: 15,
          ),

          TextField(        
            decoration: InputDecoration(hintText: 'Email', hintStyle: const TextStyle(color: Color.fromRGBO(153, 158, 170, 1),
            ),
             fillColor: Colors.white ,
             filled: true,
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)
             ),
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: const BorderSide(color: Colors.white)
             ),
             
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: const BorderSide(color: Colors.white),
            
             ),

             ),
          ),


          const SizedBox(
            height: 15,
          ),


          TextField(
            decoration: InputDecoration(hintText: 'Password',
            
            suffixIcon: const Icon(Icons.visibility_off,color:Color.fromRGBO(153, 158, 170, 1),),
            hintStyle: const TextStyle(color: Color.fromRGBO(153, 158, 170, 1)),
            fillColor: Colors.white,filled: true,border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
            
            ),
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: const BorderSide(color: Colors.white)),
             
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: const BorderSide(color: Colors.white),
            
            ),
          ),
          ),


          const SizedBox(
            height: 15,
          ),
          

          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Recovery Password',
            style: TextStyle(fontWeight: FontWeight.bold, 
            color: Color.fromRGBO(153, 158, 170, 1)),)],),


          const SizedBox(
            height: 15,
          ),
          // ElevatedButton(onPressed: () {
            
          // }, child: Text(
          //   'sign in'
          // ),
          // style: ElevatedButton.styleFrom(
          //   minimumSize: Size(40,45)
          // )
          // )
          
          Container(height: 55, width: 450,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 106, 105, 1),
            borderRadius: BorderRadius.circular(10)),
          child: const Center(child: Text('Sign in',
          style: TextStyle(color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
          ),),),)
          
        ],
      ),
    ),
    );
  }
}