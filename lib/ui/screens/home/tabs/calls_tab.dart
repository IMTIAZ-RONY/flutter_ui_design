import 'package:flutter/material.dart';

class CallsTab extends StatefulWidget {
  const CallsTab({super.key});

  @override
  State<CallsTab> createState() => _CallsTabState();
}

class _CallsTabState extends State<CallsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Text("Calls Tab") ,) ,
    );
  }
}
