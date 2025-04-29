import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../app/assets_path.dart';
import '../widgets/about_section.dart';
import '../widgets/add_to_cart_button.dart';
import '../widgets/product_details_carousel.dart';
import '../widgets/square_box_section.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Map product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> productImages = [
    AssetsPath.smartWatch,
    AssetsPath.casioWatch,
    AssetsPath.fitnessWatch,
    AssetsPath.normalWatch,
  ];



  @override
  Widget build(BuildContext context) {
    print(widget.product);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['name']),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,))
      ),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.vertical,
        children: [
         /* Container(
            color: Color(0xFFf7f7f7),
            child:
            Image.asset(widget.product['image'],height: 300,width: double.infinity,),

          ),*/
          ProductDetailsCarousel(productImages: productImages),
          SizedBox(height:20,),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Text(widget.product['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey.shade700),),
                Row(
                    children: List.generate(5, (index) => Icon(Icons.star,color: Colors.amberAccent,size: 20,))
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Text(widget.product['discount_price']==null?'\$ ${widget.product['original_price']}':'\$ ${widget.product['discount_price']}' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey.shade700)),

                      if(widget.product['discount_price']!=null)...[
                        const SizedBox(width: 5,),
                        Text('\$ ${widget.product['original_price']}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey.shade400,decoration: TextDecoration.lineThrough)),
                      ]

                    ],
                  ),
                  Text("Available in stock",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)  ,

                ],
                ),
                SizedBox(
                  height:8 ,
                ),
                AboutSection(text: 'About',) ,
                SizedBox(height: 8,),
                Text('''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'''),
                SizedBox(height: 20,),
                SquareBoxSection(),
                SizedBox(height: 20,),
                AddToCartButton(),
                SizedBox(height: 20,),

        ]
      )
    )
    ]
      )
    );
  }
}





