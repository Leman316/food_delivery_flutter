import 'package:flutter/material.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/items.dart';

class ItemContainer extends StatelessWidget {
  final FoodItem foodItem;
  ItemContainer(this.foodItem);
  final CartListbloc bloc = BlocProvider.getBloc<CartListbloc>();

  addtoCart(FoodItem foodItem) {
    bloc.addtoList(foodItem);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addtoCart(foodItem);
        final snackBar = SnackBar(
            content: Text('${foodItem.title} added to Cart'),
            duration: Duration(milliseconds: 550));
        Scaffold.of(context).showSnackBar(snackBar);
        //ScaffoldMessenger.showSnackBar(snackBar);
      },
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
