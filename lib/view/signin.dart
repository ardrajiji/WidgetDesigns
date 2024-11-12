import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Image.asset(
                     height: 300,
                     width: 350,
                     "assets/images/imgpsh_fullsize_anim.png"),
               
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                 
                    Text(" Hello \n Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
            
                TextField(
                decoration: InputDecoration(hintText: 'Username', hintStyle: const TextStyle(color: Color.fromARGB(205, 89, 80, 93),),
                fillColor: const Color.fromRGBO(205, 197, 218, 1) ,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white)),
            
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white),),
                ),
              ),
            
              const SizedBox(
                height: 15,
              ),
            
              TextField(
                decoration: InputDecoration(hintText: "Password",hintStyle:const TextStyle(color: Color.fromARGB(205, 111, 96, 117)),
                fillColor: const Color.fromRGBO(205, 197, 218, 1),
                filled: true,
                suffixIcon: const Icon(Icons.visibility_off,color:Color.fromRGBO(81, 83, 88, 1),size: 23,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),//create border
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color: Colors.white)),
                 ),
               ),
              
              const SizedBox(
                height: 10,
              ),
            
              const Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Remember me                 ",style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),
              Text("         forgot password ",style: TextStyle(fontSize: 15),textAlign: TextAlign.right,)],),
            
              
            
               const SizedBox(
                height: 35, 
              ),
            
              Container(
              height: 55, 
              width: 450,
              decoration: BoxDecoration(color: const Color.fromRGBO(82, 55, 126, 1),borderRadius: BorderRadius.circular(10)),
              child: const Center(child: Text('Sign Up',style: TextStyle(color: Color.fromARGB(255, 226, 243, 253),fontSize: 25,fontWeight: FontWeight.bold
              ),
              ),
              ),
              ),
            
              const SizedBox(
                height: 15, 
              ),
            
              const Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("or continue with",style: TextStyle(fontSize: 15),)],),
            
              const SizedBox(
                height: 25, 
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                
                    border: Border.all(style: BorderStyle.solid,
                    color: Colors.black)),
                    child: Center(child: Image.asset("assets/icons/icons8-google-48.png")),
                  ),
            
                   Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                
                    border: Border.all(style: BorderStyle.solid,
                    color: Colors.black)),
                    child: Center(child: Image.asset("assets/icons/icons8-facebook-48.png")),
                  ),
            
                   Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                
                    border: Border.all(style: BorderStyle.solid,
                    color: Colors.black)),
                    child: Center(child: Image.asset("assets/icons/icons8-apple-50.png")),
                  ),
            
        
                  
                ],
              ),
              const SizedBox(
                height:15 ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const Text("Dont have an account",style: TextStyle(fontSize: 15),),

                const SizedBox(
                  width: 10,
                ),
                
                SizedBox(
                  height: 32,
                  width: 100,
                  child: ElevatedButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                    side:const BorderSide(color: Colors.grey,width: 1.0),
                    ))
                  ),
                   child: const Text("Sign up")),
                ),

                ],
              )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
