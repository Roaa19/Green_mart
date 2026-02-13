import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/widget/text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(
            AppImage.splashLogo,
            colorFilter: ColorFilter.mode(
              AppColor.primaryColor,
              BlendMode.srcIn,
            ),
            height: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AppTextField(prefixIcon: Icon(Icons.search) ,hintText: "Search")
          ],
        ),
      ),
    );
  }
}
