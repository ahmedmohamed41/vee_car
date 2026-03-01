import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_header_check_out.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_method_option.dart';


class PurchaseMethodScreen extends StatefulWidget {
  const PurchaseMethodScreen({super.key});

  @override
  State<PurchaseMethodScreen> createState() => _PurchaseMethodScreenState();
}

class _PurchaseMethodScreenState extends State<PurchaseMethodScreen> {
  String selectedMethod = 'Cash';

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
              title: 'Choose Purchase Method',
            ),
            SizedBox(height: 20.h),
            CustomMethodOption(
              title: 'Pay Cash',
              icon: Icons.payments_outlined,
              selectedMethod: selectedMethod,
              value: 'Cash',
              onTap: () {
                setState(() {
                  selectedMethod = 'Cash';
                });
              },
            ),
            SizedBox(height: 15.h),
            CustomMethodOption(
              title: 'Installments',
              icon: Icons.calendar_month_outlined,
              selectedMethod: selectedMethod,
              value: 'Installments',
              onTap: () {
                setState(() {
                  selectedMethod = 'Installments';
                });
              },
            ),
            const Spacer(),
            CustomElevatedButton(
              title: 'Continue',
              onPressed: () {
                if (selectedMethod == 'Installments') {
                  Navigator.pushNamed(context, AppRoutes.selectBank);
                } else {
                  Navigator.pushNamed(context, AppRoutes.orderConfirmation);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
