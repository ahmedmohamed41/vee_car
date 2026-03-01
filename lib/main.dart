import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/config/theme/theme_manager.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/routes/routes_manager.dart';

void main() {
  runApp(const VeeCar());
}

class VeeCar extends StatelessWidget {
  const VeeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.light,
        onGenerateRoute: RoutesManager.router,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
