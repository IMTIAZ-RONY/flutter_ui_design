import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  final String text;
  const AboutSection({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),);
  }
}
