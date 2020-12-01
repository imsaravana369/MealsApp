import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;
  CategoryItem(this._category);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(_category.title,
      style: Theme.of(context).textTheme.headline6,),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [_category.bgColor.withOpacity(0.7),_category.bgColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:  BorderRadius.circular(15),

      ),

    );
  }
}
