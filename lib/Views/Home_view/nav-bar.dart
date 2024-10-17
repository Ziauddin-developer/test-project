import 'package:flutter/material.dart';
import 'package:upstreet/Controllers/Constants/Button.dart';
import 'package:upstreet/Views/Auth_view/Confirmation%20screen/Confirmation%20screen.dart';
import 'package:upstreet/Views/Starting_view/On-boarding-screen/On%20boarding%20screen.dart';

class NavBarClass extends StatefulWidget {
  const NavBarClass({super.key});

  @override
  State<NavBarClass> createState() => _NavBarClassState();
}

class _NavBarClassState extends State<NavBarClass> {
  int screenindex=0;
  static List screens=[
    Confirmation_screen(),
    On_boarding_screen(),
    Button(),

  ];
void changeindex(int index){
  setState(() {
    screenindex=index;

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(screenindex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: screenindex,
          onTap: changeindex,
          items:[
        BottomNavigationBarItem(icon: Icon(Icons.phone),label: '',),//0 index
        BottomNavigationBarItem(icon: CircleAvatar(radius: 30,backgroundColor: Colors.blueAccent.withOpacity(0.5),child: Icon(Icons.home),),label: ''),//1 index
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),// 2 index

      ]),
    );
  }
}
