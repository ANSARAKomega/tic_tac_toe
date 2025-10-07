import 'package:flutter/material.dart';

import 'main_menu_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goTo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Created By",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Image.asset("assets/images/Logo.png", width: 300, height: 300),
              SizedBox(height: 10),
              Text(
                "Himself",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  goTo() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainMenuScreen()),
      );
    });
  }
}
