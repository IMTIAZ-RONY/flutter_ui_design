import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../app/assets_path.dart';

class TopCategoriesSection extends StatefulWidget {
  const TopCategoriesSection({
    super.key,
  });

  @override
  State<TopCategoriesSection> createState() => _TopCategoriesSectionState();
}

class _TopCategoriesSectionState extends State<TopCategoriesSection> {

  List<Map<String,dynamic>> categories=[
    {
      "name":"Watch",
      "icon":AssetsPath.watchPng,
    },
    {
      "name":"T-Shirt",
      "icon": AssetsPath.tShirtPng,
    },
    {
      "name":"Bag",
      "icon":AssetsPath.bagPng,

    },
    {
      "name":"Shoes",
      "icon":AssetsPath.shoesPng,
    },
    {
      "name":"Sunglasses",
      "icon":AssetsPath.sunglassesPng,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                    width: 64,
                    height: 62.55,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration:BoxDecoration(
                      color: Color.fromRGBO(226, 211,211,0.5),
                      border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child:Image.asset(categories[index]['icon'],height: 40,width: 40,),
                    )



                ),
                SizedBox(height: 4,),
                Text(categories[index]['name'],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color:Color.fromRGBO(0, 0,0,1) ),),
              ],
            );




          }),
    );
  }
}