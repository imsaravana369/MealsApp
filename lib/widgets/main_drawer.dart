import 'package:flutter/material.dart';
import 'package:mealsapp/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon,Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Text(
              "Cooking Time!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "Raleway",
                fontSize: 30,
              ),
            ),
            padding: const EdgeInsets.all(25),
            color: Theme.of(context).accentColor,
            alignment: Alignment.centerLeft,
          ),
          buildListTile("Meals",Icons.restaurant,()=> Navigator.of(context).pushReplacementNamed(Navigator.defaultRouteName)),
          buildListTile("Filter", Icons.filter_list,()=> Navigator.of(context).pushNamed(FiltersScreen.routeName)),
        ],
      ),
    );
  }
}
