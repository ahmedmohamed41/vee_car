import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class CustomDividerRow extends StatelessWidget {
  const CustomDividerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorManager.baseColor,
            thickness: 1,
            endIndent: 16.w,
            indent: 25.w,
          ),
        ),
        Text(
          'Or',
          style: TextStyle(
            fontSize: 16.sp,
            color: ColorManager.baseColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorManager.baseColor,
            thickness: 1,
            endIndent: 25.w,
            indent: 16.w,
          ),
        ),
      ],
    );
  }
}
