import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/top_portion.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //  title: Text('Title'),
          ),
      body: SafeArea(
          child: Container(
        child: ListView(
          children: <Widget>[
            TopPortion(),
          ],
        ),
      )),
    );
  }
}
