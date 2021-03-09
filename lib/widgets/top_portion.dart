import 'package:flutter/material.dart';

import 'package:food_delivery/models/fooditem.dart';
import 'package:food_delivery/widgets/categories.dart';
import 'package:food_delivery/widgets/customAppBar.dart';
import 'package:food_delivery/widgets/searchbar.dart';
import 'package:food_delivery/widgets/title.dart';

class TopPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          Name(),
          SizedBox(
            height: 25,
          ),
          SearchBar(),
          SizedBox(
            height: 25,
          ),
          Categories(),
        ],
      ),
    );
  }
}
