import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_text.dart';
import 'package:vee_car/gen/assets.gen.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.pathImage,
    this.name,
    this.price,
    this.rate,
    this.id,
  });

  final String? pathImage, name, rate;
  final int? id;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.viewDetailsScreen,
        );
      },
      child: Container(
        padding: REdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Image.asset(
                  pathImage ?? Assets.images.png.veeCar.path,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              spacing: 5,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: name ?? 'Tesla Model',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      size: 14.sp,
                    ),
                    CustomText(
                      text: '${price?.toStringAsFixed(0) ?? '1,200,000'} EGP',
                      color: ColorManager.baseColor,
                      fontWeight: FontWeight.w700,
                      size: 12.sp,
                    ),
                  ],
                ),

                Expanded(
                  child: Container(
                    padding: REdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: ColorManager.baseColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'View Details',
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
