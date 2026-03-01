import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class CustomMethodOption extends StatelessWidget {
  const CustomMethodOption({
    super.key,
    required this.value,
    required this.selectedMethod,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String value, selectedMethod, title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedMethod == value;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: REdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.baseColor.withValues(alpha: 0.1)
              : Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: isSelected ? ColorManager.baseColor : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? ColorManager.baseColor : Colors.grey,
            ),
            SizedBox(width: 15.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: isSelected ? ColorManager.baseColor : Colors.black,
              ),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(Icons.check_circle, color: ColorManager.baseColor),
          ],
        ),
      ),
    );
  }
}
