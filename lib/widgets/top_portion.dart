import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/categories.dart';
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

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          GestureDetector(
            onTap: () {}, //
            child: Container(
              margin: const EdgeInsets.only(right: 30),
              child: Text('0'),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
