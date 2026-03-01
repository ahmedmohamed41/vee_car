import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/widgets/custom_text.dart';

class CustomRowCarDetail extends StatelessWidget {
  const CustomRowCarDetail({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: '$title : ',
          color: ColorManager.black,
          fontWeight: FontWeight.w900,
          size: 15.sp,
        ),
        CustomText(
          text: subTitle,
          color: ColorManager.black.withValues(alpha: 0.5),
          size: 15.sp,
        ),
      ],
    );
  }
}
