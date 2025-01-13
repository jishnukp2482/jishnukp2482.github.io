import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselImg extends StatelessWidget {
  const CarouselImg({
    super.key,
    required this.imgs,
    this.height,
    this.viewportFraction,
  });
  final List<String> imgs;
  final double? height;
  final double? viewportFraction;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgs.map(
        (e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(e),
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: height ?? 500.h,
        autoPlay: imgs.length == 1 ? false : true,
        enlargeCenterPage: true,
        enableInfiniteScroll: imgs.length == 1 ? false : true,
        viewportFraction: viewportFraction ?? 0.8.w,
      ),
    );
  }
}
