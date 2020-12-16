import 'package:flutter/material.dart';
import 'categories_home_screen.dart';
import 'favorites_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String,Object>> _pages = [{
    'page':CategoriesHomeScreen(),
    'title' : 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorites'
    }
    ];

  int _selectedPageIndex = 0;
  void _selectPage(int index){
    setState(() {
       _selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _pages[_selectedPageIndex]['title']
        ),
      ),
      body: _pages[_selectedPageIndex]['page'],
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}

/*

//Tab bar

@override
Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title : Text("Meals",) ,
          leading: Icon(Icons.restaurant_menu),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category),text: 'Category',),
              Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesHomeScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
 */
