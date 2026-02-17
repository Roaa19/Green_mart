import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/feature/explore/data/category.dart';
import 'package:greenmart/feature/explore/page/category_items_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pushTo(context, CategoryItems(categoryModel: category));
      },
      child: Container(
        height: 172,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: category.color,
            border: Border.all(color: category.color),
            boxShadow: [
              BoxShadow(
                color: AppColor.lightGrey,
                blurRadius: 4,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(category.image),
                SizedBox(height: 10),
                Text(category.title,style: TextStyles.caption1,textAlign: TextAlign.center,)
              ],
            ),
          ),
      ),
    );
  }
}

