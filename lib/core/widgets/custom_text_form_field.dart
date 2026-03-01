import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.label,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.hintText,
    this.borderSideActive,
    this.colorHintText,
    this.maxLines = 1,
    this.colorText,
    this.readOnly = false,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool readOnly;
  final Color? borderSideActive;
  final Color? colorHintText;
  final Color? colorText;
  final int? maxLines;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: colorText ?? ColorManager.baseColor,
      ),
      obscureText: obscureText,
      cursorColor: const Color(0xFF7B7B7B),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: borderSideActive ?? const Color(0xFF7B7B7B),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: borderSideActive ?? const Color(0xFF7B7B7B),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Color(0xFFFF5659)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Color(0xFFFF5659)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: borderSideActive ?? const Color(0xFF7B7B7B),
          ),
        ),
        labelText: label,
        hintText: hintText,
        hintStyle: TextStyle(
          color: colorHintText ?? ColorManager.baseColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w800,
        ),
        labelStyle: const TextStyle(color: Color(0xFF7B7B7B)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      maxLines: maxLines,
      // (input) {
      //   if (input == null || input.isEmpty) {
      //     return 'Please enter your $label';
      //   }
      //   return null;
      // },
    );
  }
}
