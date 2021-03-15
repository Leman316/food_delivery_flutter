import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/persons.dart';

class BottomBar extends StatelessWidget {
  final List<FoodItem> foodItems;
  BottomBar(this.foodItems);
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 80,
        margin: const EdgeInsets.only(left: 25, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                right: 10,
              ),
              padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total Amount:",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '\$',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    returnTotalAmount(foodItems),
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
            ),
            Persons(),
            Container(
              margin: EdgeInsets.only(right: 25),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor,
              ),
              child: nextBar(),
            ),
          ],
        ));
  }

  Widget nextBar() {
    return Row(
      children: <Widget>[
        Text(
          "15-25 min",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
          ),
        ),
        Spacer(),
        Text(
          "Next",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String returnTotalAmount(List<FoodItem> fooditems) {
    double totalamount = 0.0;

    for (var i = 0; i < fooditems.length; i++) {
      //print(totalamount);
      totalamount += fooditems[i].price * fooditems[i].quantity;
    }
    return totalamount.toString();
  }
}
