import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odaapp/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(
        seconds: 3,
      ),
      (timer) {
        Navigator.of(context).pushReplacement(PageTransition(
            child: const HomeScreen(), type: PageTransitionType.fade));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 70,
              minRadius: 70,
              backgroundImage: AssetImage(
                "assets/image/nop.png",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CupertinoActivityIndicator(
              color: Colors.white,
              radius: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "नागरिक वडापत्र",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
