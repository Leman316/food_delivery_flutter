import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/items.dart';

class ItemContainer extends StatelessWidget {
  final FoodItem foodItem;
  ItemContainer(this.foodItem);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Items(
        restaurant: foodItem.restaurant,
        name: foodItem.title,
        price: foodItem.price,
        imgUrl: foodItem.imgUrl,
        leftAligned: (foodItem.id % 2 == 0) ? true : false,
      ),
    );
  }
}
