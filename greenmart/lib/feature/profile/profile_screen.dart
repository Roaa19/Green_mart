import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: SvgPicture.asset(
                    AppImage.profileSvg,
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Roaa Ahmed", style: TextStyles.body),
                        SizedBox(width: 10),
                        Icon(Icons.edit_outlined, color: AppColor.primaryColor,size: 17,),
                      ],
                    ),
                    Text(
                      "roaahmed@gmail.com",
                      style: TextStyles.caption1.copyWith(color: AppColor.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(color: AppColor.accentGrey,)
          ],
        ),
      ),
    );
  }
}
