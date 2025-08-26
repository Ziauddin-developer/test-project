import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upstreet/Controllers/Constants/Button.dart';
import 'package:upstreet/Views/Home_view/nav-bar.dart';
import 'package:upstreet/Views/Starting_view/On-boarding-screen/On%20boarding%20screen.dart';
import 'package:upstreet/Views/Starting_view/splash-screen/Splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:
       // Button()
      On_boarding_screen()
      //Splash_screen(),
      //NavBarClass()
    );
  }
}

