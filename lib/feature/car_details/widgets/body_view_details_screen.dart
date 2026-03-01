import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/core/widgets/custom_text.dart';
import 'package:vee_car/gen/assets.gen.dart';

class BodyCarDetailsScreen extends StatelessWidget {
  const BodyCarDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            margin: REdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorManager.baseColor.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Assets.images.png.veeCar.image(),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            padding: REdgeInsets.all(20),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Name Car',
                  color: ColorManager.black,
                  fontWeight: FontWeight.bold,
                  size: 22.sp,
                ),
                CustomText(
                  text: 'Tesla Model',
                  color: ColorManager.baseColor,
                  fontWeight: FontWeight.bold,
                  size: 30.sp,
                ),
                SizedBox(height: 40.h),
                CustomText(
                  text: 'Price EGP',
                  color: ColorManager.black,
                  fontWeight: FontWeight.bold,
                  size: 20.sp,
                ),
                SizedBox(height: 10.h),
                CustomText(
                  text: '${'1,200,000'} EGP',
                  color: ColorManager.baseColor,
                  fontWeight: FontWeight.bold,
                  size: 30.sp,
                ),
                SizedBox(height: 40.h),
                CustomText(
                  text: 'Description',
                  color: ColorManager.black,
                  fontWeight: FontWeight.bold,
                  size: 22.sp,
                ),
                SizedBox(height: 8.h),
                CustomText(
                  maxLines: 5,
                  text:
                      'The Tesla Model S represents the pinnacle of modern, eco-friendly driving, meticulously designed to align with the "Smart Solutions" philosophy. It features a streamlined, aerodynamic design optimized for performance and efficiency.',
                  color: ColorManager.grey,
                  fontWeight: FontWeight.bold,
                  size: 14.sp,
                ),

                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    title: 'Proceed to Buy',
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.purchaseMethodScreen,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
