import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 202, 202),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 55,
              child: Image.asset("assets/images/imgpsh_fullsize_anim.png"),
            ),
            const Text(" Ardra JIji",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
             const Text(" ardrajiji@gmail.com",style: TextStyle(fontSize: 15,color: Colors.black),),
             const SizedBox(
              height: 20,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(right: 230),
                        child: Text(
                          " Ardra Jiji",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 90),
                        child: Text(
                          " Nirmala College Muvattupuzha ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          "  Muvattupuzha ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Recovery Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(153, 158, 170, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20.0)),
                Container(
                  height: 300,
                  width: 357,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.1),
                    color: const Color.fromARGB(255, 246, 242, 242),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Column(
                              children: [
                          Text(
                          "Nirmala College",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Muvattupuzha",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                              ],
                            )
                          ],
                        ),
                        
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 226, 223, 223),
                              ),
                              child: const Column(
                    
                                children: [
                                  Text(
                                    '12',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                     Text(
                                    '12',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 226, 223, 223),
                              ),
                              child: const Center(
                                child: Text(
                                  '24 + 4',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 226, 223, 223),
                              ),
                              child: const Center(
                                child: Text(
                                  '6 + 1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 32,
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(const Color.fromARGB(210, 103, 215, 230)),
                                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                                  side:const BorderSide(color: Color.fromARGB(211, 160, 225, 233),width: 1.0),
                     
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "abc",
                                  style: TextStyle(color: Color.fromARGB(255, 241, 239, 239)),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(height: 30, width: 85,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(250, 251, 251, 1),
                                borderRadius: BorderRadius.circular(14)
                                ),
                              child: const Center(child: Text('abcef',
                              style: TextStyle(color: Color.fromARGB(255, 19, 176, 224),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                              ),),),)
                    
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
