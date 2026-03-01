import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/core/widgets/custom_text.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_row_car_detail.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout'), centerTitle: true),
      body: Padding(
        padding: REdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Container(
              padding: REdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                spacing: 20.h,
                children: [
                  CustomText(
                    text: 'Order Confirmation',
                    color: ColorManager.black,
                    fontWeight: FontWeight.w900,
                    size: 25.sp,
                  ),

                  CircleAvatar(
                    foregroundColor: ColorManager.white,
                    backgroundColor: ColorManager.baseColor,
                    radius: 45.r,
                    child: Icon(
                      Icons.check,
                      size: 50.r,
                    ),
                  ),
                  CustomText(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    text: 'Your order has been successfully registered!',
                    color: ColorManager.black,
                    fontWeight: FontWeight.w900,
                    size: 25.sp,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              padding: REdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5.h,
                children: [
                  CustomText(
                    text: 'Summary',
                    color: ColorManager.black,
                    fontWeight: FontWeight.w900,
                    size: 20.sp,
                  ),
                  const CustomRowCarDetail(
                    title: 'Car Model',
                    subTitle: 'Lux EV',
                  ),
                  const CustomRowCarDetail(
                    title: 'Final Price',
                    subTitle: '(150,000 EGP , QNB )',
                  ),
                  CustomRowCarDetail(
                    title: 'Purchase date',
                    subTitle:
                        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
              title: 'Back to Home',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.home,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
