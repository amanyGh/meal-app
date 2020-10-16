import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategoryItem(this.title,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(15),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            Colors.teal.withOpacity(0.7),
           ],
           begin: Alignment.bottomLeft,
           end: Alignment.topLeft
            ) ),
    );
  }
}