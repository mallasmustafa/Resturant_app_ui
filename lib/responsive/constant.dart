import 'package:flutter/material.dart';
import 'package:restaurant_app/models/food_model.dart';
import 'package:restaurant_app/widgets/food_card.dart';

class Constant extends StatelessWidget {
  const Constant({
    super.key, this.crossAxisCount,
  });
  final int? crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      itemCount: allFoods.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount ?? 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 1),
      itemBuilder: (context, index) {
        final foodData = allFoods[index];
        return FoodCard(foodData: foodData);
      },
    );
  }
}
