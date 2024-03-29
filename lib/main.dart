import 'dart:async';

import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
      'second_page': (context) => const SecondPage(),
      'result_page': (context) => ResultPage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SecondPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e3962),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/bmilogo.png",
              scale: 5,

            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "BMI CALCULATOR",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            const SizedBox(
              height: 200,
            ),
            const CircularProgressIndicator(
              color: Colors.pink,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Check Your BMI",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}