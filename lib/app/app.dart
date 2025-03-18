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

      ) ,
      home:SplashScreen() ,
    );
  }
}
