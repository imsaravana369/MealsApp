import 'package:flutter/material.dart';
import './categories_home_screen.dart';
import './meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254 ,229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
            bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
        ),
          headline6: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: CategoriesHomeScreen(),
      routes: {
         /* '/' : (ctx) => CategoriesHomeScreen()  // we then don't need 'home' */
        MealsScreen.routeName : (ctx) => MealsScreen(),
      },
    );
  }
}


