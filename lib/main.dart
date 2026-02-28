import 'package:flutter/material.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/routes/routes_manager.dart';

void main() {
  runApp(const VeeCar());
}

class VeeCar extends StatelessWidget {
  const VeeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.router,
      initialRoute: AppRoutes.splash,
    );
  }
}
