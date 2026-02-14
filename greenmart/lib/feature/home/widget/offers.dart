import 'package:flutter/material.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';
import 'package:greenmart/feature/home/widget/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Exclusive Offer',style: TextStyles.title),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(0, 0)
              ),
              onPressed: () {},
              child: Text('See all'),
            ),
          ],
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
            primary: false,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemCard(model: offers[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}