import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_design/app/assets_path.dart';
import '../../utils/color.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

Future<void>_moveToNextScreen() async{
  await Future.delayed(Duration(seconds: 5));
  if(mounted){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));}
}

   @ override
   void initState(){
     super.initState();
    // print("I am init state");
     _moveToNextScreen();
    /*Timer(Duration(seconds: 5,),(){
      print('I am timer');
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
     });*/
   }

  @override
  Widget build(BuildContext context) {
  //print("I am build");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
    gradient:LinearGradient(colors:[
      AppColors.primaryColor,
      AppColors.secondaryColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        )

    ),
        /*child:Center(
        child: Container(height: 220,
          width: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/paper-airplane.png"),
              fit: BoxFit.cover
            )
          ),
        ),
      )*/
        /*child:Center(child: Image(image: AssetImage("assets/images/paper-airplane.png",),)),*/
    child: Center( child:
    Image.asset(AssetsPath.appLogoPng,
    height: 150,width: 150,),
      ),
      ),

    );
  }
}
