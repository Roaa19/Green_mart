import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/home/page/home_screen.dart';

class AcceptedScreen extends StatelessWidget {
  const AcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            SvgPicture.asset(AppImage.acceptedSvg),
            SizedBox(height: 50),
            Text(
              "Your order has been accepted",
              textAlign: TextAlign.center,
              style: TextStyles.title.copyWith(fontSize: 26),
            ),
            SizedBox(height: 10),
            Text(
              "Your items has been placed and is on \nit’s way to being processed",
              textAlign: TextAlign.center,
              style: TextStyles.caption1.copyWith(color: AppColor.grey),
            ),
            SizedBox(height: 70),
            MainButton(text: "Go To Home", onPressed: (){pushTo(context, HomeScreen());},width: 300,height: 60,)
          ],
        ),
      ),
    );
  }
}
