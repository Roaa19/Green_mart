import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/text_field.dart';
import 'package:greenmart/feature/explore/data/dummy_data.dart';
import 'package:greenmart/feature/explore/widget/category_card.dart';
import 'package:greenmart/feature/search/page/search_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Find Products",style: TextStyles.title)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                pushTo(context, SearchScreen());
              },
              child: Hero(
                tag: 'search',
                child: Material(child: AppTextField(prefixIcon: Icon(Icons.search),hintText: "serach store",enabled: false)))),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 200
                  ),
                itemBuilder: (context,index){
                  return CategoryCard(category: categoryItems[index]);
                },
                itemCount: categoryItems.length,
                ),
            )
          ],
        ),
      ),
    );
  }
}