import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

FoodItemList fooditemList = FoodItemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Beach BBQ Burger",
    restaurant: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/480x240/54ca71fb94ad3_-_5summer_skills_burger_470_0808-de.jpg",
  ),
  FoodItem(
    id: 2,
    title: "Kick Ass Burgers",
    restaurant: "Dudleys",
    price: 11.99,
    imgUrl:
        "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 3,
    title: "Supreme Pizza Burger",
    restaurant: "Golf Course",
    price: 8.49,
    imgUrl:
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190409-pizza-burger-horizontal-1-1555624827.png",
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    restaurant: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://gran.luchito.com/wp-content/uploads/2018/09/chilli-con-carne-burger-7.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    restaurant: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://i1.wp.com/www.missinthekitchen.com/wp-content/uploads/2019/05/BBQ-Burgers-Recipe-Image.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    restaurant: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/03/04/20/08/burger-3199088__340.jpg",
  ),
]);

class FoodItemList {
  List<FoodItem> foodItems;

  FoodItemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String restaurant;
  double price;
  String imgUrl;
  int quantity;

  FoodItem(
      {@required this.id,
      @required this.title,
      @required this.restaurant,
      @required this.price,
      @required this.imgUrl,
      this.quantity = 1});

  void incrementQuantity() {
    this.quantity += 1;
  }

  void decrementQuantity() {
    this.quantity -= 1;
  }
}
