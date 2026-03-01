import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/resources/validator.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/core/widgets/custom_text_button.dart';
import 'package:vee_car/core/widgets/custom_text_form_field.dart';
import 'package:vee_car/feature/auth/widgets/custom_divider_row.dart';
import 'package:vee_car/feature/auth/widgets/custom_welcome.dart';
import 'package:vee_car/gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool isSecurePass = true;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomWelcome(
                    title: 'Welcome to VeeCar',
                    subTitle: 'Login to continue',
                  ),
                  CustomTextFormField(
                    validator: (input) =>
                        Validator.validateEmail(input, context),
                    controller: _emailController,
                    label: 'Email',
                    prefixIcon: const Icon(Icons.email),
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (input) =>
                        Validator.validatePassword(input, context),
                    obscureText: isSecurePass,
                    controller: _passwordController,
                    label: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: isSecurePassword,
                      icon: Icon(
                        isSecurePass == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility_sharp,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        title: 'forget_password',
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  CustomElevatedButton(
                    title: 'login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.home,
                        );
                      }
                    },
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have Account ? ",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1C1C1C),
                        ),
                      ),
                      CustomTextButton(
                        title: 'create_account',
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.register,
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const CustomDividerRow(),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          Assets.images.svg.google,
                          width: 25.w,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.home,
                          );
                        },
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          Assets.images.svg.facebook,
                          width: 30.w,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void isSecurePassword() {
    setState(() {
      isSecurePass = !isSecurePass;
    });
  }
}
