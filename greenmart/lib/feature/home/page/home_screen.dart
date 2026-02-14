import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/widget/text_field.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';
import 'package:greenmart/feature/home/widget/all_product.dart';
import 'package:greenmart/feature/home/widget/best_selling.dart';
import 'package:greenmart/feature/home/widget/item_card.dart';
import 'package:greenmart/feature/home/widget/offers.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppTextField(prefixIcon: Icon(Icons.search) ,hintText: "Search"),
              OffersBuilder(),
              BestSellingBuilder(),
              AllProductsBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
