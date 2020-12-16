import 'package:flutter/material.dart';
import 'package:mealsapp/screens/filters_screen.dart';
import 'package:mealsapp/screens/meals_info_screen.dart';
import 'package:mealsapp/screens/tabs_screen.dart';
import 'screens/categories_home_screen.dart';
import 'screens/meals_screen.dart';

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
              fontFamily: 'Raleway',
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
            bodyText2: TextStyle(
                fontFamily: 'Raleway',
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(20, 51, 51, 1)
        ),
          headline6: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )
        )
      ),
      routes: {
        Navigator.defaultRouteName : (ctx) => TabsScreen(),
        MealsScreen.routeName : (ctx) => MealsScreen(),
        MealsInfoScreen.routeName : (ctx) => MealsInfoScreen(),
        FiltersScreen.routeName : (ctx) => FiltersScreen(),
      },
    );
  }
}


