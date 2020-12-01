import 'package:flutter/material.dart';
import 'package:mealsapp/category_item.dart';
import 'package:mealsapp/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DeliMeal"),),
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES.map((category) => CategoryItem(category) ).toList(),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3/2 , // (width/height)
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
      ),

    );
  }
}
