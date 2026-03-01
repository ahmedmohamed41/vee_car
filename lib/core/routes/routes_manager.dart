import 'package:flutter/material.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/feature/auth/login/login_screen.dart';
import 'package:vee_car/feature/auth/register/register_screen.dart';
import 'package:vee_car/feature/car_flow/car_flow_screen.dart';
import 'package:vee_car/feature/car_flow/screens/installment_plan_screen.dart';
import 'package:vee_car/feature/car_flow/screens/order_confirmation_screen.dart';
import 'package:vee_car/feature/car_flow/screens/purchase_method_screen.dart';
import 'package:vee_car/feature/car_flow/screens/select_bank_screen.dart';
import 'package:vee_car/feature/home/home_screen.dart';
import 'package:vee_car/feature/splash/splash_screen.dart';
import 'package:vee_car/feature/car_details/view_details_screen.dart';

abstract class RoutesManager {
  RoutesManager._();
  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        {
          return MaterialPageRoute(builder: (context) => const LoginScreen());
        }
      case AppRoutes.register:
        {
          return MaterialPageRoute(
            builder: (context) => const RegisterScreen(),
          );
        }
      case AppRoutes.splash:
        {
          return MaterialPageRoute(builder: (context) => const SplashScreen());
        }
      case AppRoutes.home:
        {
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        }
      case AppRoutes.viewDetailsScreen:
        {
          return MaterialPageRoute(
            builder: (context) => const CarDetailsScreen(),
          );
        }
      case AppRoutes.carFlow:
        {
          return MaterialPageRoute(
            builder: (context) => const CarFlowScreen(),
          );
        }
      case AppRoutes.purchaseMethodScreen:
        {
          return MaterialPageRoute(
            builder: (context) => const PurchaseMethodScreen(),
          );
        }
      case AppRoutes.selectBank:
        {
          return MaterialPageRoute(
            builder: (context) => const SelectBankScreen(),
          );
        }
      case AppRoutes.orderConfirmation:
        {
          return MaterialPageRoute(
            builder: (context) => const OrderConfirmationScreen(),
          );
        }
      case AppRoutes.installmentPlan:
        {
          return MaterialPageRoute(
            builder: (context) => const InstallmentPlanScreen(),
          );
        }
    }
    return null;
  }
}
