import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 55,
    this.width = double.infinity,
    this.textStyle, 
  });
  final String text;
  final Function() onPressed;
  final double height;
  final double width;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(width, height),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontSize: 16,
          fontWeight: FontWeight.w600
        )
              
            ),
      );
    
  }
}