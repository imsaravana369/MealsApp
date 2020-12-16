
import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import '../widgets/MealItem.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
class MealsScreen extends StatefulWidget {
  static const routeName = '/meals-screen';

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  String mealTitle;
  List<Meal> categoryMeals;
  var _isCategoryMealListInitialized=false;

  @override
  void didChangeDependencies() {
    if(!_isCategoryMealListInitialized) {
      final category = ModalRoute
          .of(context)
          .settings
          .arguments as Category;
      mealTitle = category.title;
      categoryMeals =
          DUMMY_MEALS.where((meal) => meal.categories.contains(category.id))
              .toList();
      _isCategoryMealListInitialized = true;
    }
    super.didChangeDependencies();
  }
  void _removeItem(var id){
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id==id);
    });
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text(mealTitle),
      ),
        body: Container(
          child: ListView.builder(itemBuilder: (ctx,index) {
            return MealItem(categoryMeals[index],_removeItem);
          },
            itemCount: categoryMeals.length ,),

    ),
    );
  }
}
