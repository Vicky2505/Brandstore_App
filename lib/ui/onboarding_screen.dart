import 'package:brandstore/ui/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Transform.translate(
                      offset: Offset(0, -5.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                          bottomRight: Radius.circular(40.r),
                        ),
                        child: Image.asset(
                          'images/onboarding_assets/onboarding.png',
                          width: double.infinity,
                          height: 500.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Find The\nBest Collections',
                        style: TextStyle(
                          fontSize: 44.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Get your dream item easily with FashionHub\nand get other intersting offer',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color(0xFF797780),
                          height: 1.5,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 40.h),
                      child: CustomButton(
                        text: 'Get Start',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottomNavBar(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}