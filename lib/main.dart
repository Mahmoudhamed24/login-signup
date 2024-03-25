import 'package:flutter/material.dart';
import 'package:login/SignUp.dart';
import 'package:login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "KSlash Flutter Provides extraordinary Flutter tutorials, Do Subscribe!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            const Image(
              image: AssetImage('img/welcome.jpeg'),
              width: 300,
              height: 250,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50)),
                color: const Color.fromARGB(
                    255, 255, 255, 255), // Add a color to the button
                textColor: const Color.fromARGB(
                    255, 0, 0, 0), // Set text color to white
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ), // Add text to the button
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50)),

                color: Colors.blue, // Add a color to the button
                textColor: Colors.white, // Set text color to white
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ), // Add text to the button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
