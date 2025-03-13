import 'package:flutter/material.dart';
import '../ui/screens/splash_screen.dart';
import '../utils/color.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        inputDecorationTheme:InputDecorationTheme(
          prefixIconColor:Colors.black ,
          filled: true,
          fillColor: AppColors.fieldBackgroundColor,
          contentPadding:EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          hintStyle: TextStyle(color: Colors.black.withValues(alpha:0.2),fontWeight: FontWeight.w300 ,),
          hoverColor:Colors.yellow.shade50 ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black,width: 1),
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.blue,width: 2),

          ) ,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.green,width: 1),

          ),
          errorBorder:OutlineInputBorder(
            borderRadius:BorderRadius.circular(5),
            borderSide:BorderSide(color:AppColors.secondaryColor), ),
        )
      ) ,
      home:SplashScreen() ,
    );
  }
}
