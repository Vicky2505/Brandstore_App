import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 1.w, right: 2.w),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new, size: 28.sp),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Cart',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 38.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 26.h),
                Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(),
                  secondaryBackground: Align(
                    alignment: Alignment.centerRight,
                    child: Transform.translate(
                      offset: Offset(0, -48.h),
                      child: Container(
                        height: 55.h,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            bottomLeft: Radius.circular(30.r),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: _buildCartItem(
                    image: 'images/home_assets/tagerine_shirt.png',
                    title: 'Premium\nTagerine Shirt',
                    price: '\$257.85',
                  ),
                ),
                SizedBox(height: 40.h),
                Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(),
                  secondaryBackground: Align(
                    alignment: Alignment.centerRight,
                    child: Transform.translate(
                      offset: Offset(0, -48.h),
                      child: Container(
                        height: 55.h,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            bottomLeft: Radius.circular(30.r),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: _buildCartItem(
                    image: 'images/home_assets/leather_coart.png',
                    title: 'Leather\nTagerine Coart',
                    price: '\$257.85',
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Divider(
                    height: 40.h,
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: _buildPriceRow('Total Items (3)', '\$116.00'),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: _buildPriceRow('Standard Delivery', '\$12.00'),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: _buildPriceRow(
                    'Total Payment',
                    '\$126.00',
                    isTotal: true,
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF7A00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Checkout Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem({
    required String image,
    required String title,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.only(right: 12.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              image,
              width: 120.w,
              height: 150.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Yellow',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xFF797780)),
                ),
                Text(
                  'Size 8',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xFF797780)),
                ),
                SizedBox(height: 6.h),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100.h),
            child: Text('1x', style: TextStyle(fontSize: 28.sp)),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 20.sp : 17.sp,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
            color: isTotal ? Colors.black : Color(0xFF797780),
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: isTotal ? 20.sp : 17.sp,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}