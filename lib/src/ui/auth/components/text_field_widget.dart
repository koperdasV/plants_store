import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.keyboardType,
    this.hintText,
  }) : super(key: key);

  final TextInputType? keyboardType;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: AppColor.kPrimaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: AppColor.kPrimaryColor,
              width: 2,
            ),
          ),
          label: const Text(
            'Номер телефону',
          ),
          floatingLabelStyle: TextStyle(
            fontSize: 18,
            color: AppColor.kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
