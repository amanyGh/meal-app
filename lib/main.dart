import 'package:flutter/material.dart';

import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meal_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        // canvasColor: Color.fromRGBO(255 , 254, 229, 1),
        fontFamily: 'SansitaSwashed',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline2: TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
          ),
          subtitle1: TextStyle(fontSize: 18)
        )
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) =>CategoriesScreen(),
        CategoryMealSacreen.routeName : (ctx)=>CategoryMealSacreen(),
      },
    );
  }
}