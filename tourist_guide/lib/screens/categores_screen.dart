import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/catigory_item.dart';

class CategoresScreen extends StatelessWidget {
  const CategoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
         GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7/8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
          
          children:Categories_data.map((categoryData) {
              return CatigoryItem(
              title: categoryData.title,
              image: categoryData.image,
              id: categoryData.id,
            );
          }).toList(),
        
    );
  }
}