import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/cartListItem.dart';
import 'package:food_delivery/widgets/cart_screen_appbar.dart';

class CartBody extends StatelessWidget {
  final List<FoodItem> fooditems;
  CartBody(this.fooditems);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CartAppBar(),
          titlebar(),
          Expanded(
            child: fooditems.length > 0 ? foodItemList() : noItemContainer(),
            flex: 1,
          ),
        ],
      ),
    );
  }

  Widget foodItemList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartListItem(fooditems[index]);
      },
      itemCount: fooditems.length,
    );
  }

  Widget titlebar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "My",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              ),
              Text(
                "Order",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget noItemContainer() {
    return Container(
        child: Center(
            child: Text(
      'No items in cart',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.grey[400],
      ),
    )));
  }
}
