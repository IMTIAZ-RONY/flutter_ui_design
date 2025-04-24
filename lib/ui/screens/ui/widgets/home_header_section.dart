import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const HomeHeaderSection({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Color.fromRGBO(0, 0,0,1) )),
          Spacer(),
          TextButton( onPressed: () {  }, child:Text("See All",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:Color.fromRGBO(31, 65,187,1) ),),),
        ]
    );
  }
}///