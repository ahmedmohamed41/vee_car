import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.grey[300],
    appBarTheme: AppBarThemeData(
      foregroundColor: ColorManager.white,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
      backgroundColor: ColorManager.baseColor,
    ),
  );
  static final ThemeData dark = ThemeData();
}
