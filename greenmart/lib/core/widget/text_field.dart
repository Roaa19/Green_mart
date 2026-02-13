import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key, required this.hintText, this.keyboardType, this.prefixIcon,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: AppColor.lightGrey,
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}