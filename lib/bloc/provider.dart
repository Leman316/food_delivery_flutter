import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';

class CartProvider {
  List<FoodItem> foodItems = [];
  List<FoodItem> addtoList(FoodItem foodItem) {
    bool ispresent = false;
    if (foodItems.length > 0) {
      for (var i = 0; i < foodItems.length; i++)
        if (foodItems[i].id == foodItem.id) {
          increaseItemQuantity(foodItem);
          ispresent = true;
          break;
        } else
          ispresent = false;

      if (!ispresent) foodItems.add(foodItem);
    } else {
      foodItems.add(foodItem);
    }
    //foodItems.add(foodItem);
    return foodItems;
  }

  void increaseItemQuantity(FoodItem foodItem) => foodItem.incrementQuantity();
  void decreaseItemQuantity(FoodItem foodItem) => foodItem.decrementQuantity();

  List<FoodItem> removefromList(FoodItem foodItem) {
    if (foodItem.quantity > 1)
      decreaseItemQuantity(foodItem);
    else
      foodItems.remove(foodItem);
    return foodItems;
  }
}
