import 'package:flutter/material.dart';
import 'package:greenmart/core/widget/text_field.dart';
import 'package:greenmart/feature/home/data/dummy_data.dart';
import 'package:greenmart/feature/search/widget/filtered_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
   String searchKey = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            child: AppTextField(
              prefixIcon: Icon(Icons.search),
              hintText: "search",
              onChanged: (value){
                setState(() {
                  searchKey = value;
                });
              } ,
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredList(product: getProductByName(searchKey)),
    );
  }
}
