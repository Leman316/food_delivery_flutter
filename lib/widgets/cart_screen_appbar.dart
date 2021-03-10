import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class CartAppBar extends StatelessWidget {
  final CartListbloc bloc = BlocProvider.getBloc<CartListbloc>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            child: Icon(
              CupertinoIcons.back,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        //  DragTargetWidget(bloc),
      ],
    );
  }
}
