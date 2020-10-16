
import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.title,this.color,this.id);

  void selectCategory(ctx){
    Navigator.of(ctx).pushNamed(CategoryMealSacreen.routeName,arguments:{'id':id,'title':title});
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
           borderRadius: BorderRadius.circular(15),
           splashColor: Theme.of(context).primaryColor,
           onTap: (){
             selectCategory(context);
           },
          child: Container(
        padding:const EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.subtitle1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              Colors.teal.withOpacity(0.7),
             ],
             begin: Alignment.bottomLeft,
             end: Alignment.topLeft
              ),
              borderRadius: BorderRadius.circular(15)
               ),
      ),
    );
  }
}