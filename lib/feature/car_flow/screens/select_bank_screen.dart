import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_header_check_out.dart';
import 'package:vee_car/feature/car_flow/widgets/custom_select_bank.dart';
import 'package:vee_car/gen/assets.gen.dart';

class SelectBankScreen extends StatefulWidget {
  const SelectBankScreen({super.key});

  @override
  State<SelectBankScreen> createState() => _SelectBankScreenState();
}

class _SelectBankScreenState extends State<SelectBankScreen> {
  bool isSelectBank1 = false;
  bool isSelectBank2 = false;
  bool isSelectBank3 = false;
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
              title: 'Select Bank',
            ),
            SizedBox(height: 20.h),
            CustomSelectBank(
              name: 'Banque Misr',
              logoPath: Assets.images.png.misr.keyName,
              isSelectBank: isSelectBank1,
              onTap: () {
                setState(() {
                  isSelectBank1 = !isSelectBank1;
                  isSelectBank2 = isSelectBank3 = false;
                });
              },
            ),
            SizedBox(height: 15.h),
            CustomSelectBank(
              name: 'QNB',
              logoPath: Assets.images.png.qnb.keyName,
              isSelectBank: isSelectBank2,
              onTap: () {
                setState(() {
                  isSelectBank2 = !isSelectBank2;
                  isSelectBank1 = isSelectBank3 = false;
                });
              },
            ),
            SizedBox(height: 15.h),
            CustomSelectBank(
              name: 'alahly',
              logoPath: Assets.images.png.alahly.keyName,
              isSelectBank: isSelectBank3,
              onTap: () {
                setState(() {
                  isSelectBank3 = !isSelectBank3;
                  isSelectBank1 = isSelectBank2 = false;
                });
              },
            ),
            const Spacer(),
            CustomElevatedButton(
              title: 'Continue',
              onPressed: () {
                if (isSelectBank1 || isSelectBank2 || isSelectBank3) {
                  Navigator.of(
                    context,
                  ).pushNamed(AppRoutes.installmentPlan);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: ColorManager.baseColor1,
                      content: Text('Please Select Bank'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }


}
