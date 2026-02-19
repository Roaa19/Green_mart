import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/auth/page/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // image
          Image.asset(
            AppImage.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // content
          Positioned(
            bottom: 60,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImage.logo,
                  colorFilter: ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyles.headline.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'to our store',
                  textAlign: TextAlign.center,
                  style: TextStyles.headline.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyles.body.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                MainButton(
                  text: 'Get Started',
                  onPressed: () {
                    pushReplacement(context, LoginScreen());
                  },
                  textStyle: TextStyles.subtitle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}