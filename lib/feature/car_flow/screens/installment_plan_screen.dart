import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_header_check_out.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_table.dart';

class InstallmentPlanScreen extends StatelessWidget {
  const InstallmentPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout'), centerTitle: true),
      body: Padding(
        padding: REdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomHeaderCheckOut(
              title: 'Installment Plan',
            ),
            SizedBox(height: 20.h),
            const CustomTable(
              carPrice: 20000,
              annualRate: 0.10,
            ),
            const Spacer(),
            CustomElevatedButton(
              title: 'Confirm & Submit',
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.orderConfirmation,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
