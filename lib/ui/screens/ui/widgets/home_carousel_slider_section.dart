import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarouselSliderSection extends StatefulWidget {
  const HomeCarouselSliderSection({
    super.key,

  });



  @override
  State<HomeCarouselSliderSection> createState() => _HomeCarouselSliderSectionState();
}

class _HomeCarouselSliderSectionState extends State<HomeCarouselSliderSection> {
  List<String> sliderImages=[
    'https://images.vexels.com/content/194700/preview/buy-online-slider-template-4261dd.png',
    'https://images.vexels.com/content/194698/preview/shop-online-slider-template-4f2c60.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CarouselSlider(
            items: sliderImages.map((sliderImage) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: NetworkImage(sliderImage),
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
              height: 150,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.1,
              scrollDirection: Axis.horizontal,
            ),
          )

        ]
    );
  }
}