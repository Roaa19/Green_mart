import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/card/page/accepted_screen.dart';
import 'package:greenmart/feature/card/widge/customize_list_tile.dart';

class ContentBottomSheet extends StatelessWidget {
  const ContentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("Checkout", style: TextStyles.title),
                Spacer(),
                Icon(Icons.clear),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            CustomizeListTile(
              text1: 'Delivery',
              widget: Text(
                "Select Method",
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomizeListTile(
              text1: 'Pament',
              widget: SvgPicture.asset(AppImage.cardSvg),
            ),
            CustomizeListTile(
              text1: 'Promo Code',
              widget: Text(
                "Pick Discount",
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomizeListTile(
              text1: 'Delivery',
              widget: Text(
                "\$13.97",
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "By placing an order you agree to our",
              style: TextStyles.caption2.copyWith(color: AppColor.grey),
            ),
            Row(
              children: [
                Text(
                  "Terms ",
                  style: TextStyles.caption2.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "And ",
                  style: TextStyles.caption2.copyWith(color: AppColor.grey),
                ),
                Text(
                  "Conditions",
                  style: TextStyles.caption2.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            MainButton(
              text: "Place Order",
              onPressed: () { pushTo(context, AcceptedScreen()); },
            ),
          ],
        ),
      ),
    );
  }
}
