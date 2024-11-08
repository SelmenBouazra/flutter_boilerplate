import 'package:flutter/cupertino.dart';
import '../../generated/l10n.dart';


String? validateField({required BuildContext context, required  String? value, required  String message}) {
  if (value == null || value.isEmpty) {
    return message;
  }
  return null;
}

String? validatePhoneNumber(BuildContext context,  String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).please_enter_a_phone_number;
  }
  Pattern pattern = r'^\d{3,20}$';
  RegExp regex = RegExp(pattern as String);
  if (!regex.hasMatch(value)) {
    return S.of(context).please_enter_a_valid_phone_number;
  }
  return null;
}


String? validatePassword(BuildContext context, String password) {

  final RegExp passwordRegex = RegExp(r'^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[!@#$%^&*()-_=+{}|\\[\]:;<>/?]).{8,30}$');
  if (password.isEmpty) {
    return S.of(context).please_enter_a_password;
  }
  if (password.length < 8 || !passwordRegex.hasMatch(password)) {
    return S.of(context).password_must_be_at_least;
  }
  return null;
}

String? validateConfirmationPassword(BuildContext context, String? password, String? confirmPassword) {

   if (confirmPassword == null || confirmPassword.isEmpty) {
    return  S.of(context).please_confirm_the_password;
  } else if (password != confirmPassword) {
    return S.of(context).passwords_do_not_match;
  }
  return null;
}

String? validateEmail(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).please_enter_an_email_address;
  }
  Pattern pattern =
      r'^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9])*@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$';
  RegExp regex = RegExp(pattern as String);
  if (!regex.hasMatch(value)) {
    return S.of(context).please_enter_a_valid_email_address;
  }
  return null;
}

String? validateName(BuildContext context,  String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).please_enter_a_first_and_last_name;
  }
  Pattern pattern =  r"^[a-zA-ZÀ-ÿ\s\'-]+$";
  RegExp regex = RegExp(pattern as String);
  if (!regex.hasMatch(value)) {
    return S.of(context).name_can_only_contain_alphabetic_characters;
  }
  return null;
}

String? validateZipCode(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).please_enter_a_zip_code;
  }
  Pattern pattern = r'^\d{4,10}$'; // Adjust the pattern based on the ZIP code format you need
  RegExp regex = RegExp(pattern as String);
  if (!regex.hasMatch(value)) {
    return S.of(context).please_enter_a_valid_zip_code;
  }
  return null;
}