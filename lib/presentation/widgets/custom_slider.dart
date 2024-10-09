import 'package:ostello/core/extension.dart';
import 'package:ostello/core/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final List<String> svgImages = [
    'assets/sliderr.svg',
    'assets/sliderr.svg',
    'assets/sliderr.svg',
    'assets/sliderr.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity, // Ensure the container takes full width
          height: context.height() * 0.15, // Set the height for the carousel
          child: FlutterCarousel(
            items: svgImages.map(
              (path) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: double.infinity, // Ensure full width
                    height: double.infinity, // Ensure full height
                    child: SvgPicture.asset(
                      path,width: double.infinity,  
                      fit: BoxFit.fill, // Fill the container without distortion
                    ),
                  ),
                );
              },
            ).toList(),
            options: FlutterCarouselOptions(
              viewportFraction: 1, // Ensures one image takes full width at a time
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              height: context.height() * 0.15, // Height of the carousel
              showIndicator: true,
              slideIndicator: CircularSlideIndicator(
                slideIndicatorOptions: SlideIndicatorOptions(
                  currentIndicatorColor: AppColors.accent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
