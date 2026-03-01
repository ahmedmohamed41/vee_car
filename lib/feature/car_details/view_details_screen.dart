import 'package:flutter/material.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/feature/car_details/widgets/body_view_details_screen.dart';
import 'package:vee_car/models/car_model.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({
    super.key,
    this.carModel,
  });

  final CarModel? carModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorManager.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),

        title: const Text(
          'Car Details',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: ColorManager.baseColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const BodyCarDetailsScreen(),
    );
  }
}
