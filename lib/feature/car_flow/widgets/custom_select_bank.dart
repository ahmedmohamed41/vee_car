import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';

class CustomSelectBank extends StatelessWidget {
  const CustomSelectBank({
    super.key,
    required this.name,
    required this.logoPath,
    this.onTap,
    this.isSelectBank = false,
  });
  final String name;
  final String logoPath;
  final bool? isSelectBank;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: ColorManager.baseColor),
        borderRadius: BorderRadiusGeometry.circular(16.r),
      ),

      leading: CircleAvatar(
        radius: 20.r,
        backgroundColor: Colors.transparent,
        child: Image.asset(logoPath),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: isSelectBank == true
          ? const Icon(
              Icons.radio_button_checked,
              color: ColorManager.baseColor,
            )
          : const Icon(
              Icons.radio_button_off,
              color: ColorManager.baseColor,
            ),
      onTap: onTap,
    );
  }
}
