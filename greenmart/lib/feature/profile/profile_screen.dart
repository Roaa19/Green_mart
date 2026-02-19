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
        child: SingleChildScrollView(
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
                          Icon(
                            Icons.edit_outlined,
                            color: AppColor.primaryColor,
                            size: 17,
                          ),
                        ],
                      ),
                      Text(
                        "roaahmed@gmail.com",
                        style: TextStyles.caption1.copyWith(
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.ordersSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Orders",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.detailsSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "My Details",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.addSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Delivery Address",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.paymentSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Payment Methods",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.promoSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Promo Code",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.notificationSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Notifications",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.helpSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "Help",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(color: AppColor.accentGrey),
              ListTile(
                leading: SvgPicture.asset(AppImage.aboutSvg),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  "About",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF2F3F2),
                  minimumSize: Size(300, 65),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImage.logoutSvg),
                    SizedBox(width: 10),
                    Text(
                      "Log Out",
                      style: TextStyles.caption1.copyWith(
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
