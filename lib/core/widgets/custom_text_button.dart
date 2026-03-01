import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.title,
    this.isUnderline = true,
  });
  final void Function()? onTap;
  final String title;
  final bool? isUnderline;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: ColorManager.baseColor,
          decoration: isUnderline == true ? TextDecoration.underline : null,
          decorationColor: ColorManager.baseColor,
        ),
      ),
    );
  }
}
