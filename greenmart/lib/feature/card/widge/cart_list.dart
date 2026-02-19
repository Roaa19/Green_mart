import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/build_image.dart';
import 'package:greenmart/feature/home/data/product_model.dart';

class CartList extends StatelessWidget {
  const CartList({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildImage(path: model.image, width: 70, height: 70),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(model.name, style: TextStyles.subtitle),
            Text(
              model.quantityForPrice,
              style: TextStyles.caption2.copyWith(color: AppColor.grey),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20, 20),
                    elevation: 0,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: const Color.fromARGB(33, 124, 124, 124)
                      )
                    ),
                    
                  ),
                  child: Icon(Icons.remove,color: AppColor.grey,),
                ),
                SizedBox(width: 10),
                Text("1",style: TextStyles.body.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20, 20),
                    elevation: 0,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: const Color.fromARGB(33, 124, 124, 124)
                      )
                    ),
                  ),
                  child: Icon(Icons.add,color: AppColor.primaryColor,),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Icon(Icons.clear),
            SizedBox(height: 20),
            Text("\$${model.price}", style: TextStyles.subtitle),
          ],
        ),
      ],
    );
  }
}
