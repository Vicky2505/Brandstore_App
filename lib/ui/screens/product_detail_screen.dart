import 'package:brandstore/ui/screens/cart_screen.dart';
import 'package:brandstore/widgets/category_chip.dart';
import 'package:brandstore/widgets/size_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailScreen extends StatefulWidget {
  final String image;
  final String price;
  final String name;

  const ProductDetailScreen({
    super.key,
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedSizeIndex = 2;
  final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];

  final List<String> colorIcons = [
    'images/detail_assets/design1.png',
    'images/detail_assets/design2.png',
    'images/detail_assets/design3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, size: 28.sp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.bookmark_border, size: 28.sp),
                ],
              ),
              SizedBox(height: 26.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(
                  widget.image,
                  height: 430.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(colorIcons.length, (index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: CategoryChip(imagePath: colorIcons[index]),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              SizeSelector(
                sizes: sizes,
                selectedIndex: selectedSizeIndex,
                onSelect: (index) {
                  setState(() => selectedSizeIndex = index);
                },
              ),
              SizedBox(height: 34.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF7A00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 35.w,
                          vertical: 14.h,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}