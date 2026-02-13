import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/auth/page/verification_code.dart';
import 'package:greenmart/core/widget/text_field.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your mobile number",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  textAlign: TextAlign.justify,
                  "we need to verify you. We will send you a one time verification code.",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                  ),
                ),
                SizedBox(height: 40),
                AppTextField(hintText: "01xxxxxxxxx",keyboardType: TextInputType.number),
                SizedBox(height: 40),
                MainButton(text: "Next", onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => VerificationScreen()));
                }),          
              ],
            ),
          ),
        ),
      ),
    );
  }
}