import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:unicode_emojis/unicode_emojis.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_carousel_slider_section.dart';
import '../widgets/home_header_section.dart';
import '../widgets/product_item__section.dart';
import '../widgets/top_categories_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  //bool isFavourite=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0, ///this is use for stop shadow in appBar when we scroll;
        backgroundColor: Colors.white,
        elevation: 0,
       leading: AppBarIconButton(icon:Icons.menu , onPressed: () {  },),
        actions: [
          AppBarIconButton(icon:Icons.search, onPressed: () {  },),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child:ListView(
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                   Text("Hello Fola ${UnicodeEmojis.search('waving hand').first.emoji} ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFFFF9000))),
                   SizedBox(height: 8,),
                   Text("Let's start shopping! ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color:Color.fromRGBO(0, 0,0,0.5) )),
                ]
              ),
              SizedBox(height:24,),
              HomeCarouselSliderSection(),
              SizedBox(height:16,),
              HomeHeaderSection(text:'Top Categories', onPressed: () {  },),
              SizedBox(height:16,),
              TopCategoriesSection(),
              SizedBox(height:16,),
              ProductItemSection(),

            ],

        ),
      ),
    );
  }
}///








