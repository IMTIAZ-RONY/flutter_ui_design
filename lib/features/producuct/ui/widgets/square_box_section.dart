import 'package:flutter/material.dart';

class SquareBoxSection extends StatefulWidget {
  const SquareBoxSection({super.key});

  @override
  State<SquareBoxSection> createState() => _SquareBoxSectionState();
}

class _SquareBoxSectionState extends State<SquareBoxSection> {
  List<int> sizes=[35,36,37,38,39,40,41,42,43];
  int? selectedSizeIndex;
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 45,
        child: ListView.separated(
          itemCount: sizes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                setState(() {
                  selectedSizeIndex=index;
                });
              },
              child: Container(
                width: 45,
                decoration: BoxDecoration(
                  color:selectedSizeIndex!=null && selectedSizeIndex==index?Colors.blueAccent:null ,
                  border:Border.all(
                    color: Colors.grey.shade400,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Center(
                    child: Text(sizes[index].toString(),
                      style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: selectedSizeIndex!=null && selectedSizeIndex==index?Colors.white:Colors.grey.shade700),)),
              ),
            );
          }, separatorBuilder: (context,index){
          return SizedBox(width: 10,);
        }, ),
      );
  }
}
