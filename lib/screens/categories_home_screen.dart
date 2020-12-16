import 'package:flutter/material.dart';
import 'file:///C:/Users/Saravana/AndroidStudioProjects/meals_app/lib/widgets/category_item.dart';
import 'package:mealsapp/dummy_data.dart';

class CategoriesHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES.map((category) => CategoryItem(category) ).toList(),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3/2 , // (width/height)
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),

    );
  }
}
