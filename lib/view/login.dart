import 'package:flutter/material.dart';

class NewLogin extends StatefulWidget {
  const NewLogin({super.key});

  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create your own account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(205, 82, 85, 87),
                ),
                fillColor: const Color.fromARGB(205, 197, 218, 255),
                filled: true,
                prefixIcon: const Icon(
                  Icons.account_circle,
                  color: Color.fromARGB(205, 130, 153, 193),
                  size: 23,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: const TextStyle(color: Color.fromARGB(205, 95, 112, 124)),
                fillColor: const Color.fromARGB(205, 197, 218, 255),
                filled: true,
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color.fromARGB(205, 130, 153, 193),
                  size: 23,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: const TextStyle(color: Color.fromARGB(205, 82, 85, 87)),
                fillColor: const Color.fromARGB(205, 197, 218, 255),
                filled: true,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color.fromARGB(205, 130, 153, 193),
                  size: 23,
                ),
                suffixIcon: const Icon(
                  Icons.visibility_off,
                  color: Color.fromRGBO(153, 158, 170, 1),
                  size: 23,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: const TextStyle(color: Color.fromARGB(205, 82, 85, 87)),
                fillColor: const Color.fromARGB(205, 197, 218, 255),
                filled: true,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color.fromARGB(205, 130, 153, 193),
                  size: 23,
                ),
                suffixIcon: const Icon(
                  Icons.visibility_off,
                  color: Color.fromRGBO(153, 158, 170, 1),
                  size: 23,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "I agree with the Privacy Policy",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(210, 43, 103, 214),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "or continue with",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButtonContainer('assets/icons/icons8-google-48.png'),
                IconButtonContainer('assets/icons/icons8-facebook-48.png'),
                IconButtonContainer('assets/icons/icons8-apple-50.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconButtonContainer extends StatelessWidget {
  final String assetPath;

  const IconButtonContainer(this.assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(style: BorderStyle.solid, color: Colors.black),
      ),
      child: Center(child: Image.asset(assetPath)),
    );
  }
}
