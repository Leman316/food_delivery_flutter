import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:food_delivery/bloc/provider.dart';
import 'package:food_delivery/screens/cart_screen.dart';

class CustomAppBar extends StatelessWidget {
  final CartListbloc bloc = BlocProvider.getBloc<CartListbloc>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          StreamBuilder(
            stream: bloc.listStream,
            builder: (context, snapshot) {
              List<FoodItem> foodItems = snapshot.data;
              int length = foodItems != null ? foodItems.length : 0;
              return gestureDetector(length, context, foodItems);
            },
          ),
        ],
      ),
    );
  }
}

Widget gestureDetector(
    int length, BuildContext context, List<FoodItem> foodItems) {
  return GestureDetector(
    onTap: () {
      if (length > 0)
        Navigator.of(context).pushNamed(Cart.routename);
      else
        return;
    },
    child: Container(
      margin: const EdgeInsets.only(right: 30),
      child: Text(length.toString()),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.yellow[800], borderRadius: BorderRadius.circular(44)),
    ),
  );
}
