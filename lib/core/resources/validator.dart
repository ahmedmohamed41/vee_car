import 'package:flutter/widgets.dart';

abstract class Validator {
  static String? validateName(String? input, BuildContext context) {
    if (input == null || input.trim().isEmpty) {
      return 'Please Enter Your Name';
    }
    if (input.length < 4) {
      return 'Name Should be at least 4 chars ';
    }
    return null;
  }

  static String? validateEmail(String? input, BuildContext context) {
    if (input == null || input.trim().isEmpty) {
      return 'Please Enter Your Email';
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(input)) {
      return 'Please Enter a valid Email';
    }
    return null;
  }

  static String? validatePassword(String? input, BuildContext context) {
    if (input == null || input.trim().isEmpty) {
      return 'Please Enter Your Password';
    } else if (input.length < 8) {
      return 'Password Should be at least 8 chars';
    }
    return null;
  }

  static String? validateRePassword(
    String? input,
    BuildContext context,
    String? pass,
  ) {
    if (input == null || input.trim().isEmpty) {
      return 'Please Enter Your Password';
    } else if (input != pass) {
      return "Password Doesn't Match";
    }
    return null;
  }
}
