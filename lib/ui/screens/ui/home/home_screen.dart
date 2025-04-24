import 'package:flutter/material.dart';
import 'package:flutter_ui_design/app/assets_path.dart';
import 'dart:ui';
import 'package:unicode_emojis/unicode_emojis.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_header_section.dart';
import '../widgets/home_carousel_slider_section.dart';
import '../widgets/top_categories_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<Map<String,dynamic>> products=[
  {
    "name":"Apple Watch - S:6",
    "original_price":"45,000",
    "discount_price":"35,000",
    "image":AssetsPath.smartWatch,
    "isFavorite":false,
  },
  {
    "name":"Casio Watch",
    "original_price":"15,000",
    "discount_price":null,
    "image":AssetsPath.casioWatch,
    "isFavorite":false,
  },
  {
    "name":"Fitness Watch",
    "original_price":"40,000",
    "discount_price":"30,000",
    "image":AssetsPath.fitnessWatch,
    "isFavorite":false,

  },
  {
    "name":"Normal Watch",
    "original_price":"12,000",
    "discount_price":null,
    "image":AssetsPath.normalWatch,
    "isFavorite":false,
  }
];
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
              GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount:products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context,index){
                    final product=products[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(226, 211,211,0.5),
                        border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
                        borderRadius: BorderRadius.circular(16),
                    ),
                    child:Padding(
                      padding: EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          Positioned(
                            top: -2,
                            right: -2,
                            child:Material(
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  setState(() {
                                    product['isFavorite']=!product['isFavorite'];
                                    print("Product ${index} favorite: ${products[index]['isFavorite']}");
                                  });
                                },
                                child:product["isFavorite"]==false?Icon(Icons.favorite_border,color:Colors.white ,size: 25,):Icon(Icons.favorite,color:Colors.red ,size: 25,),

                              )
                            )

                            /*IconButton(
                              onPressed: () {
                                setState(() {
                                 product['isFavorite']=!product['isFavorite'];
                                });
                              },
                              icon:product['isFavorite']==false? Icon(Icons.favorite_border,color: Colors.white,size: 25,):Icon(Icons.favorite,color: Colors.red,size: 25,),
                            ),*/
                          ),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded
                              (child: Image.asset(product['image'],height: 120,width: 120,)),
                            SizedBox(height: 8,),
                            Text(product['name'],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,overflow:TextOverflow.ellipsis, ),maxLines: 1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$ ${product['discount_price']==null?product['original_price']:product['discount_price']}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,),),
                                if(product['discount_price']!=null)
                                 Text('\$ ${product['original_price']}',
                                 style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color:Colors.black.withValues(alpha:0.5),decoration: TextDecoration.lineThrough,),
                                 )],
                            ),
                            SizedBox(height: 8,),
                                ]
                        ),
                        ],
                      ),
                    ),
                    );
                  })
            ],

        ),
      ),
    );
  }
}///








