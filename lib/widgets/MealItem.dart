import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/meals_info_screen.dart';

class MealItem extends StatelessWidget {
  final Meal _meal;
  final Function removeItemFunc;
  MealItem(this._meal,this.removeItemFunc);

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealsInfoScreen.routeName,arguments: this._meal).then(
            (popId) => removeItemFunc(popId));
  }
  String get complexityText {
    switch (_meal.complexity) {
      case Complexity.Simple:
        return "Simple";
      case Complexity.Challenging:
        return "Challenging";
      case Complexity.Hard:
        return "Hard";
      default:
        return "Unknown";
    }
  }
  String get priceyText{
    switch (_meal.affordability) {
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Pricey:
        return "pricey";
      case Affordability.Luxurious:
        return "Expensive";
      default:
        return "Unknown";
    }
  }
  @override
  Widget build(BuildContext context) {
    final borderRad = 15.0;
    return InkWell(
      onTap: () => selectMeal(context),
      child: Column(
        children: [
          Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRad)),
              child: Column(
                children: [
                  Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRad),
                          topRight: Radius.circular(borderRad)),
                      child: Image.network(
                        _meal.imageUrl,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                        color: Color.fromARGB(27, 0, 0, 0),
                        alignment: Alignment.centerRight,
                        child:Text(_meal.title,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 26,color: Colors.white),)
                  ),
                    )
                   ]),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer),
                            Text('${_meal.duration} min')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.work),
                            Text(complexityText)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.attach_money),
                            Text(priceyText)
                          ],
                        ),
//                        InfoIcon(icon: Icons.timer,text:'${_meal.duration} min'),
//                        InfoIcon(icon:Icons.work, text: complexityText ),
//                        InfoIcon(icon:Icons.attach_money,text: priceyText)

                      ],
                    ),
                  ),
                ],
    ),
              )
        ],
      ),
    );
  }
}

//not rendering correctly
class InfoIcon extends StatelessWidget {
  IconData _icon;
  String _text;
  InfoIcon({@required icon,@required text});
  @override
  Widget build(BuildContext context) =>
    Row(
      children: [
        Icon(_icon),
        SizedBox(width: 6),
        Text(_text),
      ],
    );
  }

