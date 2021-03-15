import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/bloc/liststyleColorbloc.dart';
import 'package:food_delivery/models/fooditem.dart';

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
        DragTargetWidget(),
        //  DragTargetWidget(bloc),
      ],
    );
  }
}

class DragTargetWidget extends StatefulWidget {
  @override
  _DragTargetWidgetState createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  final CartListbloc bloc = BlocProvider.getBloc<CartListbloc>();
  final ColorBloc colorBloc = BlocProvider.getBloc<ColorBloc>();

  @override
  Widget build(BuildContext context) {
    return DragTarget<FoodItem>(
      onWillAccept: (FoodItem foodItem) {
        colorBloc.setColor(Colors.red);
        return true;
      },

      onAccept: (FoodItem foodItem) {
        colorBloc.setColor(Colors.white);

        bloc.removefromList(foodItem);
      },
      //onLeave: (FoodItem foodItem){
      //colorBloc.setColor(Colors.white); }
      builder: (context, candidateData, rejectedData) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            CupertinoIcons.delete,
            size: 30,
          ),
        );
      },
    );
  }
}
