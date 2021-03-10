import 'package:flutter/material.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/cartbody.dart';

class Cart extends StatelessWidget {
  static const routename = '/cart';
  final CartListbloc bloc = BlocProvider.getBloc<CartListbloc>();
  @override
  Widget build(BuildContext context) {
    List<FoodItem> fooditems;
    return StreamBuilder(
      stream: bloc.listStream,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          fooditems = snapshot.data;
          return Scaffold(
            body: SafeArea(
                child: Container(
              child: CartBody(fooditems),
            )),
          );
        }
        return Scaffold();
      },
    );
  }
}
