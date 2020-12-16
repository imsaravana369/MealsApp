import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mealsapp/models/meal.dart';

class MealsInfoScreen extends StatelessWidget {
  static const routeName = '/mealsInfo';

  Widget buildSubTitleContainer(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme
          .of(context)
          .textTheme
          .headline6),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight  = MediaQuery.of(context).size.height;
    final meal = ModalRoute
        .of(context)
        .settings
        .arguments as Meal;
    return Scaffold(
      appBar: AppBar(title: Text('${meal.title}')),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              child: Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: screenHeight*0.3,
                fit: BoxFit.cover,
              )),
          buildSubTitleContainer(context, 'Ingredients'),
          Container(
            width:screenWidth*0.7,
            height: screenHeight*0.2,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            child: ListView.builder(
//            shrinkWrap: true,
            itemBuilder: (ctx, index) =>
                Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child:Text(meal.ingredients[index],
                        softWrap: true,
                      ),
                    ),
            ),
            padding: EdgeInsets.all(2),
            itemCount: meal.ingredients.length,
          ),
          ),
          buildSubTitleContainer(context, 'Steps'),
          Container(
            width: screenWidth*0.9,
              height:  screenHeight*0.4,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.grey),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(5),
              child:ListView.builder(
//            shrinkWrap: true,
            itemBuilder: (ctx,index){
            return ListTile(
              leading: CircleAvatar(
                child: Text('# ${index+1}',
                )
              ),
              title: Container(
                color: Color.fromARGB(10,0,0,0),
              child:Text(meal.steps[index],
              style: Theme.of(context).textTheme.bodyText1),
              ),
            );
          }, itemCount: meal.steps.length,),
          ),
        ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: ()=> Navigator.of(context).pop(meal.id),
      ),
    );
  }
}
