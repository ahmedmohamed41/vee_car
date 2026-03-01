import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/widgets/custom_text.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_show_balance.dart';

class CustomHeaderCheckOut extends StatelessWidget {
  const CustomHeaderCheckOut({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomShowBalance(),
        SizedBox(height: 30.h),
        CustomText(
          text: title,
          color: ColorManager.black,
          fontWeight: FontWeight.bold,
          size: 18.sp,
        ),
      ],
    );
  }
}
