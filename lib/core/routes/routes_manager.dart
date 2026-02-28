import 'package:flutter/material.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/feature/auth/login/login_screen.dart';
import 'package:vee_car/feature/auth/register/register_screen.dart';
import 'package:vee_car/feature/car_flow/car_flow_screen.dart';
import 'package:vee_car/feature/home/home_screen.dart';
import 'package:vee_car/feature/splash/splash_screen.dart';

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
      case AppRoutes.mainLayout:
        {
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        }
      case AppRoutes.carFlow:
        {
          return MaterialPageRoute(
            builder: (context) => const CarFlowScreen(),
          );
        }
    }
    return null;
  }
}
