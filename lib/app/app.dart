import 'package:flutter/material.dart';
import 'package:flutter_ui_design/ui/screens/ui/home/home_screen.dart';

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
      home:HomeScreen() ,
    );
  }
}
