import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/build_image.dart';
import 'package:greenmart/feature/home/data/product_model.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildImage(path: model.image,width: 70,height: 70,),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(model.name,style: TextStyles.subtitle),
            Text(model.quantityForPrice,style: TextStyles.caption2.copyWith(color: AppColor.grey)),
          ],
        ),
        Spacer(),
        Text("\$${model.price}",style: TextStyles.subtitle,),
        SizedBox(width: 10),
        Icon(Icons.arrow_forward_ios_sharp)
      ],

    );
  }
}