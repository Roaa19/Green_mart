import 'package:flutter/material.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/card/widge/cart_list.dart';
import 'package:greenmart/feature/card/widge/content_bottom_sheet.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("My Cart", style: TextStyles.title)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return CartList(model: allProducts[index]);
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: const Color.fromARGB(181, 218, 212, 212)),
            );
          },
          itemCount: allProducts.length,
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: MainButton(
          text: "Go To Checkout",
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return ContentBottomSheet();
              },
            );
          },
        ),
      ),
    );
  }
}
