import 'package:flutter/material.dart';
import 'package:mealsapp/meals_screen.dart';
import 'package:mealsapp/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;
  CategoryItem(this._category);

  void moveToMealsScreen(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_) => MealsScreen()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => moveToMealsScreen(context),
      splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15), //set same borderRadius as that of parent
        child:Container(
      padding: const EdgeInsets.all(15),
      child:
      Text(_category.title,
      style: Theme.of(context).textTheme.headline6,),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [_category.bgColor.withOpacity(0.7),_category.bgColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:  BorderRadius.circular(15),

      ),

    ),
    );
  }
}
