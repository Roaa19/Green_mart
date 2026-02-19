import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/auth/page/mobile_number.dart';
import 'package:greenmart/feature/main/main_app_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                  "Enter verification code",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  textAlign: TextAlign.justify,
                  "we have sent SMS to: 01xxxxxxxxx",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                  ),
                ),
                SizedBox(height: 40),
                Pinput(length: 5),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MobileNumber()),
                    );
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Change Phone Number",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                MainButton(text: "Confirm", onPressed: () {pushReplacement(context, MainAppScreen());}),
                SizedBox(height: 16),
                Align(
                  child: Text(
                        "Resend OTP",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
