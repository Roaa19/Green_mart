import 'package:flutter/material.dart';
import 'package:greenmart/core/widget/text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTextField(prefixIcon: Icon(Icons.search),hintText: "search"),
      ),
      
    );
  }
}