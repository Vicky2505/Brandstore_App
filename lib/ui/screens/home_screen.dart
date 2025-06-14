import 'package:brandstore/ui/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../widgets/product_card.dart';

final products = [
  {
    "image": 'images/home_assets/tagerine_shirt.png',
    "price": '\$240.32',
    "name": 'Tagerine Shirt',
  },
  {
    "image": 'images/home_assets/leather_coart.png',
    "price": '\$325.36',
    "name": 'Leather Coart',
  },
  {
    "image": 'images/home_assets/royal_shirt.png',
    "price": '\$126.47',
    "name": 'Royal Shirt',
  },
  {
    "image": 'images/home_assets/luxury_coart.png',
    "price": '\$257.85',
    "name": 'Luxury Coart',
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(0, -5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/home_assets/menu_icon.png',
                    width: 38.w,
                    height: 38.h,
                  ),
                  Image.asset(
                    'images/home_assets/profile_icon.png',
                    width: 38.w,
                    height: 38.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Text(
              'Explore',
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.h),
            Text(
              'Best trendy collection!',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF797780),
              ),
            ),
            SizedBox(height: 22.h),
            SizedBox(
              height: 35.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryChip('All', selected: true),
                  _buildCategoryChip('Men'),
                  _buildCategoryChip('Women'),
                  _buildCategoryChip('Kids'),
                  _buildCategoryChip('Other'),
                ],
              ),
            ),
            SizedBox(height: 22.h),
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 18.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            image: products[index]["image"]!,
                            price: products[index]["price"]!,
                            name: products[index]["name"]!,
                          ),
                        ),
                      );
                      // ignore: avoid_print
                      print('Tapped on ${products[index]["name"]}');
                    },
                    child: ProductCard(
                      image: products[index]["image"]!,
                      price: products[index]["price"]!,
                      name: products[index]["name"]!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, {bool selected = false}) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: selected ? Color(0xFFFF7A00) : Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}