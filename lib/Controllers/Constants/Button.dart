import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: InkWell(
          onTap: (){
            Get.to(()=>ScreenTwo(),transition:
         //   Transition.fade,
            //Transition.fadeIn,
            Transition.zoom,
          //  Transition.circularReveal,

                duration: Duration(seconds: 1));

          },
          child: Container(
            height: 50,
            width: 220,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.blueAccent
              ]),
              boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1,blurRadius: 10,offset: Offset(1, 10))],
              borderRadius: BorderRadius.circular(10)
              
          
            ),child: Center(
            child: Text('Get start',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          ),
        ),
      ),
    );
  }
}


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: Text('Screen-two'),),
    );
  }
}
