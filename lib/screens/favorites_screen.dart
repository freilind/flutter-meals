import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;
  const FavoritesScreen({Key? key, required this.favoritesMeals})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('You have not favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                id: favoritesMeals[index].id,
                title: favoritesMeals[index].title,
                imageUrl: favoritesMeals[index].imageUrl,
                duration: favoritesMeals[index].duration,
                complexity: favoritesMeals[index].complexity,
                affordability: favoritesMeals[index].affordability);
          },
          itemCount: favoritesMeals.length);
    }
  }
}
