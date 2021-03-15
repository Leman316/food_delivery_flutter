import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/bloc/cartlistbloc.dart';
import 'package:food_delivery/bloc/liststyleColorbloc.dart';
import 'package:food_delivery/screens/cart_screen.dart';
import 'package:food_delivery/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CartListbloc()),
        Bloc((i) => ColorBloc()),
      ],
      child: MaterialApp(
        title: 'Food Delivery',
        debugShowCheckedModeBanner: false,
        home: Home(),
        routes: {
          Cart.routename: (ctx) => Cart(),
        },
      ),
    );
  }
}
