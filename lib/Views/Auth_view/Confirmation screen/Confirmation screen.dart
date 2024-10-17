import 'package:flutter/material.dart';
import 'package:upstreet/Controllers/Constants/Blackbold%20text.dart';
import 'package:upstreet/Controllers/Constants/Images.dart';
import 'package:upstreet/Controllers/Constants/light%20text.dart';
class Confirmation_screen extends StatefulWidget {
  const Confirmation_screen({super.key});

  @override
  State<Confirmation_screen> createState() => _Confirmation_screenState();
}

class _Confirmation_screenState extends State<Confirmation_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.only(left: 48,top: 70),
            child: Black_bold_text(text: 'How will you use upstreet?'),
            
          ),
          Light_text(lighttext: "     Choose from one of the options below to\n         help us personalize your experience"),
          SizedBox(height: 40,),
          ListTile(onTap: (){},
            leading: CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.7),radius: 40,child: Image.asset('assets/Driver.png')),
            title: Text('Customer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text('Send product as a customer'),
            trailing: Icon(Icons.circle_outlined),



          ),
          SizedBox(height: 40,),





          ListTile(onTap: (){},
            leading: CircleAvatar(backgroundColor: Colors.orange.withOpacity(0.7),radius: 38,child: Image.asset(Images.driver)),
              title: Text('Driver',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              subtitle: Text('Reach the product as a driver'),
            trailing: Icon(Icons.circle_outlined) ,

              

          ),
        ],
      ),
    );
  }
}
