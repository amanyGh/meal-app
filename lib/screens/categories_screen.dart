import 'package:flutter/material.dart';
import 'package:meal_app/models/dummy_data.dart';
import 'package:meal_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DeliMeal'),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          children: DUMMY_CATEGORIES.map(
            (catData) =>CategoryItem(catData.title,catData.color,catData.id) 
          ).toList(),
          gridDelegate: 
          SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
        ),
      )
       ,); 
    
  }
}
