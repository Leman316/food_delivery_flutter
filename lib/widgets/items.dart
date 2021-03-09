import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String restaurant;
  final String name;
  final double price;
  final String imgUrl;
  final bool leftAligned;

  Items(
      {@required this.restaurant,
      @required this.name,
      @required this.price,
      @required this.imgUrl,
      @required this.leftAligned});

  @override
  Widget build(BuildContext context) {
    double containerPadding = 45;
    double containerBorderRadius = 10;
    return Column(
      children: <Widget>[],
    );
  }
}
