import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsCarousel extends StatelessWidget {
  const ProductDetailsCarousel({
    super.key,
    required this.productImages,
  });

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: productImages.map<Widget>((productImage) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(productImage),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.white.withValues(alpha:0.5 ),
                    BlendMode.darken),
              )
          ),
        );
      }
      ).toList(),
      options: CarouselOptions(
        height: 220,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.1,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}