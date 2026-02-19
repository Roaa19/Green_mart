import 'package:flutter/material.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/favorite/widget/favorite_list.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Favorite", style: TextStyles.title)),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
                itemBuilder: (context,index){
                  return FavoriteList(model: favorite[index]);
                  }, 
                separatorBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: const Color.fromARGB(181, 218, 212, 212)),
                  );
                },
                itemCount: favorite.length),
      ),
          
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: MainButton(text: "Add All To Cart", onPressed: () {}),
      ),
    );
  }
}
