import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';

class CTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyBordType;
  final String? Function(String?)? validator;
  const CTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.keyBordType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBordType,
      validator: validator,
      textInputAction: TextInputAction.next,
      cursorColor: AppColors.buttonColor,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        hintStyle: const TextStyle(
            color: Color(0xff747688),
            fontSize: 14,
            fontWeight: FontWeight.w400),
        errorStyle: const TextStyle(
          fontSize: 10.5,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.buttonColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
