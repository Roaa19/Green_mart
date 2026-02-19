import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/build_image.dart';
import 'package:greenmart/feature/details/page/details_screen.dart';
import 'package:greenmart/feature/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});

  final ProductModel model;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsScreen(model: model));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: AppColor.lightGrey),
          boxShadow: [
            BoxShadow(
              color: AppColor.lightGrey,
              blurRadius: 4,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Center(child: BuildImage(path: model.image))),
            SizedBox(height: 10),
            Text(
              model.name,
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 6),
            Text(
              model.quantityForPrice,
              style: TextStyles.caption2.copyWith(color: AppColor.grey),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  '\$${model.price}',
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                Spacer(),
                FloatingActionButton.small(
                  heroTag: UniqueKey(),
                  elevation: 0,
                  backgroundColor: AppColor.primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}