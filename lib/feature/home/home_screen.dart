import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/feature/home/widgets/card_item.dart';
import 'package:vee_car/feature/home/widgets/custom_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.baseColor,
      appBar: AppBar(
        title: Text(
          'Choose Your Car',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorManager.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30.sp,
              color: ColorManager.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomHeaderWidget(),
            SizedBox(height: 24.h),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  childAspectRatio: 0.90,
                ),
                itemBuilder: (context, index) {
                  return const CardItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
