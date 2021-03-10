import 'package:flutter/material.dart';
import 'package:food_delivery/models/fooditem.dart';

class CartListItem extends StatelessWidget {
  final FoodItem foodItem;
  CartListItem(this.foodItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 25),
      child: ItemContent(foodItem),
    );
  }
}

class ItemContent extends StatelessWidget {
  final FoodItem foodItem;
  ItemContent(this.foodItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              foodItem.imgUrl,
              fit: BoxFit.fitHeight,
              height: 55,
              width: 80,
            ),
          ),
          RichText(
            text: TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                children: [
                  TextSpan(text: foodItem.quantity.toString()),
                  TextSpan(text: 'x'),
                  TextSpan(text: foodItem.title),
                ]),
          ),
          Text(
            '\$${foodItem.quantity * foodItem.price}',
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
