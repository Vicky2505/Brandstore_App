import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeSelector extends StatelessWidget {
  final List<String> sizes;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const SizeSelector({
    super.key,
    required this.sizes,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(sizes.length, (index) {
        final bool isSelected = index == selectedIndex;

        return GestureDetector(
          onTap: () => onSelect(index),
          child: Container(
            width: 45.w,
            height: 45.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.white12),
            ),
            child: Text(
              sizes[index],
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                color: isSelected ? Colors.white : Color(0xFF797780),
              ),
            ),
          ),
        );
      }),
    );
  }
}