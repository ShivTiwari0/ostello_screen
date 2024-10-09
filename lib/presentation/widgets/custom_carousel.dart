

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class CustomCarouselSlider extends StatelessWidget {
   CustomCarouselSlider({
    super.key,

  });
  final List<String> svgImages = [
    'assets/sliderr.svg',
    'assets/sliderr.svg',
    'assets/sliderr.svg',
    'assets/sliderr.svg'
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var carouselOptions = CarouselOptions(
      height: (size.height * 0.15  < 150) ? 150  : size.height * 0.15,
      aspectRatio: 16  / 9,
      viewportFraction: 0.95,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      
    );
    return SizedBox(
      width: size.width,
      height: (size.height * 0.15  < 150) ? 150  : size.height * 0.15,
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
       
          return  SvgPicture.asset(
                     'assets/sliderr.svg'  ,width: double.infinity,  
                      fit: BoxFit.fill, 
                    );
        },
        options: carouselOptions,
      ),
    );  
  }
}
  