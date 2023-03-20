import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

TextStyle get16W500BlackTextStyle() {
  return const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
}

TextStyle get16W400GreenStatusStyle() {
  return const TextStyle(
    color: Color.fromRGBO(49, 125, 69, 0.7),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
}

TextStyle get14W500WhiteTextButton() {
  return const TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}

TextStyle get16W600PrimaryColorText() {
  return TextStyle(
    fontSize: 18,
    color: AppColor.kPrimaryColor,
    fontWeight: FontWeight.w600,
  );
}
