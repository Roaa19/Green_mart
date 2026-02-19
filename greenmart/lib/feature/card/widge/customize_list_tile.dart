import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';

class CustomizeListTile extends StatelessWidget {
  const CustomizeListTile({super.key, required this.text1, required this.widget});

  final String text1;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              text1,
              style: TextStyles.subtitle.copyWith(color: AppColor.grey),
            ),
            Spacer(),
            widget,
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios_sharp),
          ],
        ),
        SizedBox(height: 10),
        Divider(),
      ],
    );
  }
}
