import 'package:flutter/material.dart';

import 'Mystyles.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  // final String hintText;
  // final bool obscureText;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String)? onChanged;

  MyTextField({
    required this.controller,
    // required this.hintText,
    // this.obscureText = false
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // return TextField(
    //   controller: controller,
    //   obscureText: obscureText,
    //   decoration: InputDecoration(
    //     hintText: hintText,
    //     border: OutlineInputBorder(),
    //   ),
    // );
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppStyles.radiusXL),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppStyles.primary),
          borderRadius: BorderRadius.circular(AppStyles.radiusXL),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppStyles.primary),
          borderRadius: BorderRadius.circular(AppStyles.radiusXL),
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: AppStyles.paddingL,
            horizontal: AppStyles.paddingL
        ),
      ),
      style: TextStyle(
        fontSize: AppStyles.spaceM,
      ),
    );
  }
}
