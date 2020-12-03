import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/meals-screen';
   @override
  Widget build(BuildContext context) {
     final  category = ModalRoute.of(context).settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
          title:Text(category.title),
      ),
        body: Container(
           color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("helllllllllllllllllllllllllllllllo"),
            Text("hello")
          ],

    ),
    ),
    );
  }
}
