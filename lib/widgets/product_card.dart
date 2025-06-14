import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String price;
  final String name;

  const ProductCard({
    super.key,
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final double imageHeight = (Random().nextBool() ? 180 : 210).h;

    return SizedBox(
      width: 160.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              image,
              width: 160.w,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Transform.translate(
            offset: Offset(0, -20.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 12.w),
                width: 34.w,
                height: 34.w,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Image.asset(
                    'images/bottom_nav_assets/cart _icon.png',
                    width: 19.w,
                    height: 19.h,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF797780),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}