import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/feature/explore/data/category.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';
import 'package:greenmart/feature/search/widget/filtered_list.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.title),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset(AppImage.settingsSvg))
          ,
          
        ],
      ),
      body: FilteredList(product: getProductById(categoryModel.id)),
      );
  }
}