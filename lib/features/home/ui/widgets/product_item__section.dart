import 'package:flutter/material.dart';
import '../../../../../app/assets_path.dart';
import '../../../producuct/ui/screen/product_details_screen.dart';




class ProductItemSection extends StatefulWidget {
  const ProductItemSection({super.key});

  @override
  State<ProductItemSection> createState() => _ProductItemSectionState();
}

class _ProductItemSectionState extends State<ProductItemSection> {
  @override
  Widget build(BuildContext context) {
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
    return  GridView.builder(
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
          return InkWell(
            onTap: (){
              print("Product ${index} clicked");
              print(product);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen(product: product,)));
            },
            child: Container(
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
            ),
          );
        });
  }
}
