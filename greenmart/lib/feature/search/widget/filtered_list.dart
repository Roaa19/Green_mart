import 'package:flutter/material.dart';
import 'package:greenmart/feature/home/data/product_model.dart';
import 'package:greenmart/feature/home/widget/item_card.dart';

class FilteredList extends StatelessWidget {
  const FilteredList({super.key, required this.product});
  final List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisExtent: 300,
            ),
            itemBuilder: (context, index) {
              return ItemCard(model: product[index]);
            },
            itemCount: product.length,
          ),
    );
  }
}