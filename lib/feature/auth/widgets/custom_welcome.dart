import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/gen/assets.gen.dart';

class CustomWelcome extends StatelessWidget {
  const CustomWelcome({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 30.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: ColorManager.grey,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Assets.images.png.loginLogo.image(
          height: 186.h,
          width: 136.w,
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
