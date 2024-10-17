import 'package:flutter/material.dart';
import 'package:upstreet/Controllers/Constants/Images.dart';
import 'package:upstreet/Views/Auth_view/Confirmation%20screen/Confirmation%20screen.dart';
class On_boarding_screen extends StatefulWidget {
  const On_boarding_screen({super.key});

  @override
  State<On_boarding_screen> createState() => _On_boarding_screenState();
}

class _On_boarding_screenState extends State<On_boarding_screen> {
  PageController pageController = PageController();
  int currentPage = 0;
  void pageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }
  void nextPage() {
    if (currentPage < 2) {
      pageController.animateToPage(
        ++currentPage, // Increment currentPage before using it
        duration: Duration(milliseconds: 200), // Changed to milliseconds
        curve: Curves.easeInOutQuint,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: currentPage != 2
          ? FloatingActionButton(
        onPressed: nextPage,
        child: Icon(Icons.arrow_forward), // Add an icon for better UX
      )
          :  Padding(
            padding: const EdgeInsets.only(right: 70,bottom: 80),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmation_screen()));
              },
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.blueAccent
                    ]),
                    boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1,blurRadius: 3,offset: Offset(1, 3))],
                    borderRadius: BorderRadius.circular(10),


                ),child: Center(
                child: Text('Get start',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              ),
            ),
          ),
      body: Stack(

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280,top: 80 ),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmation_screen()));
            }, child: Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),


          PageView(
          onPageChanged: pageChanged,
            controller: pageController,


            children:[
          _pagebuilder(Images.Onboard, 'Quick delivery', 'Deliver your product all over the country\n         It help you to  deliver properly'),
          _pagebuilder(Images.Onboard2, 'Deliver your product', 'Deliver your product all over the country \n          it will help to deliver properly '),
          _pagebuilder(Images.Onboard3, 'Reached at your door step', 'Deliver your product at all over the country \n       it will help you to deliver properly    ')






        ]




        ),

          //if(currentPage!=2)
            //FloatingActionButton(onPressed: (){})
          //else SizedBox(),
          // if (currentPage == 2)
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 137,bottom: 100),
          //         child: ElevatedButton(
          //
          //           onPressed: () {
          //             // Handle your button action here
          //             Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmation_screen()));
          //           },
          //           child: Text('Get Started'),
          //         ),
          //       ),
          //     ],
          //   ),




      ]),
    );
  }
}
Widget _pagebuilder(String image,String text1,String text2){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(image: AssetImage(image)),
      Center(
        child: Column(

          children: [
            SizedBox(height: 70,),
            Text(text1,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)
            ,SizedBox(height: 30,),
            Text(text2,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),






          ],
        ),
      )

    ],
  );
}
