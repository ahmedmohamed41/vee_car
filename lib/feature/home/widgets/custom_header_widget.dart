import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/gen/assets.gen.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: ColorManager.white.withValues(alpha: 0.1),
          child: Assets.images.png.character1.image(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet Balance',
              style: TextStyle(
                color: ColorManager.white.withValues(alpha: 0.7),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '30,000 EGP',
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
