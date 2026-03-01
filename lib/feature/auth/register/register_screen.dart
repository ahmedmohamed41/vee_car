import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/resources/validator.dart';
import 'package:vee_car/core/routes/app_routes.dart';
import 'package:vee_car/core/widgets/custom_elevated_button.dart';
import 'package:vee_car/core/widgets/custom_text_button.dart';
import 'package:vee_car/core/widgets/custom_text_form_field.dart';
import 'package:vee_car/feature/auth/widgets/custom_welcome.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isSecurePass = true;
  bool isSecureRePass = true;
  late GlobalKey<FormState> _formKey;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _rePasswordController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();

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
                    subTitle: 'Register to continue',
                  ),
                  CustomTextFormField(
                    validator: (input) =>
                        Validator.validateName(input, context),
                    controller: _nameController,
                    label: 'Name',
                    prefixIcon: const Icon(Icons.person),
                  ),
                  SizedBox(height: 16.h),
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
                  CustomTextFormField(
                    validator: (input) => Validator.validateRePassword(
                      input,
                      context,
                      _passwordController.text,
                    ),
                    obscureText: isSecureRePass,
                    controller: _rePasswordController,
                    label: 'Re Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: isSecureRePassword,
                      icon: Icon(
                        isSecureRePass == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility_sharp,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomElevatedButton(
                    title: 'create_account',
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
                        'Already Have Account ? ',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1C1C1C),
                        ),
                      ),
                      CustomTextButton(
                        title: 'login',
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.login,
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
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

  void isSecureRePassword() {
    setState(() {
      isSecureRePass = !isSecureRePass;
    });
  }
}
