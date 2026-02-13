import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/auth/page/login.dart';
import 'package:greenmart/feature/auth/page/mobile_number.dart';
import 'package:greenmart/core/widget/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AppImage.logo),
                ),
                SizedBox(height: 40),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey,
                  ),
                ),
                AppTextField(hintText: "roaa abdelazim"),
                SizedBox(height: 16),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey,
                  ),
                ),
                AppTextField(hintText: "example@gmail.com"),
                SizedBox(height: 16),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey,
                  ),
                ),
                AppTextField(hintText: "*************"),
                SizedBox(height: 16),
                MainButton(text: "Sign Up", onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MobileNumber()) 
                     );
                }),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()) 
                           );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}