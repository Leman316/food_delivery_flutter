import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';

class CartProvider {
  List<FoodItem> foodItems = [];
  List<FoodItem> addtoList(FoodItem foodItem) {
    foodItems.add(foodItem);
    return foodItems;
  }

  List<FoodItem> removefromList(FoodItem foodItem) {
    foodItems.remove(foodItem);
    return foodItems;
  }
}
