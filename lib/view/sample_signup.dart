import 'package:flutter/material.dart';

class SignupNew extends StatelessWidget {
  const SignupNew({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        backgroundColor: const Color.fromRGBO(238, 172,26, 1),
        resizeToAvoidBottomInset: true,
        body:Center(
          
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                      const SizedBox(height: 130,),
                      const Padding(
                        padding: EdgeInsets.only(right: 240),
                        child: Text("Sing Up",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),),
                      ),
              
                        const SizedBox(height: 30,),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15)
                          )
                        ),
              
                        const SizedBox(height: 15,),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15)
                          )
                        ),
                        
                        const SizedBox(height: 15,),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: " Create Password",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15)
                          )
                        ),
                        const SizedBox(height: 30,),
              
                        Container(
                          width: 600,
                          height: 40,
                          margin:  const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius:  const BorderRadius.all(Radius.circular(5),),
                            color: Colors.black),
                            child: const Center(
                              child: Text("Sign Up",
                              style: TextStyle(
                                color: Color.fromRGBO(238, 172,26, 1),
                                fontSize: 15),),
                            ),
                          ),
              
                          const SizedBox(height: 15,),
                          const Center(
                          child: Text("By Signing Up,You agree to our \n Terms and Privacy Policy")),
                           const SizedBox(height: 15,),
                          const Center(
                            child: Text("or")),const SizedBox(height: 15,),
              
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25),),
                                    color: Colors.black, 
                                  ),
                                  child: Image.asset("assets/icons/icons8-google-48.png",
                                  fit: BoxFit.none,
                                  // height:5,
                                  // width: 5,
                                  ),
                                ),
                                const SizedBox(width: 40,),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25),),
                                    color: Colors.black, 
                                  ),
                                  child: Image.asset("assets/icons/icons8-facebook-48.png",
                                  fit: BoxFit.none,
                                  ),
                                ),
                                const SizedBox(width: 40,),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25),),
                                    color: Colors.black, 
                                  ),
                                  child: Image.asset("assets/icons/icons8-twitter-48.png",
                                  fit: BoxFit.none,
                                  ),
                                )
                                
                              ]
                            ),
                   const SizedBox(height: 40,),
                   const Padding(
                     padding: EdgeInsets.only(left: 60),
                     child: Row(
                       children: [
                          Text("Already have an account ? "),
                         Text("Login",
                         style:TextStyle(
                          fontWeight: FontWeight.bold,
                         ))
                       ],
                     ),
                   ) 
                ]
                         ),
            ),
          )
        ),
    );
  }
}