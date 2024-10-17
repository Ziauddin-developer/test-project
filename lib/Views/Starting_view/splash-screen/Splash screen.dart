import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upstreet/Controllers/Constants/Images.dart';
import 'package:upstreet/Views/Starting_view/On-boarding-screen/On%20boarding%20screen.dart';
class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  double _obasity=0.0;
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer){setState(() {
      _obasity = _obasity == 0.0 ? 1.0 : 0.0;
    });});
    Future.delayed(Duration(seconds: 6),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>On_boarding_screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:
          AnimatedOpacity(opacity: _obasity,duration: Duration(seconds: 1),child: Image.asset(Images.pic1 ))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Image.asset(Images.pic3),
          ),
          Image.asset(Images.pic2)
        ],

      ),

    );
  }
}
