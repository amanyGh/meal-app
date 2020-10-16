import 'package:flutter/material.dart';

class CategoryMealSacreen extends StatelessWidget {
  static const routeName = '/meal_screen';
  // final String title;
  // final String catId;
  // CategoryMealSacreen(this.title,this.catId);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final titleArg = routeArgs['title'];
    final idArgs = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(title: Text('meal'),),
      body: Center(child: Text(titleArg)),
    );
  }
}