import 'package:flutter/material.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';
import 'package:greenmart/feature/home/widget/item_card.dart';

class AllProductsBuilder extends StatelessWidget {
  const AllProductsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('All Products',style: TextStyles.title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('See all'),
            ),
          ],
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 300,
          ),
          itemBuilder: (context, index) {
            return ItemCard(model: allProducts[index]);
          },
          itemCount: allProducts.length,
        ),
      ],
    );
  }
}