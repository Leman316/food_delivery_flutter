import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class ColorBloc extends BlocBase {
  ColorBloc();

  var _colorController = BehaviorSubject<Color>.seeded(Colors.white);

  Stream<Color> get colorStream => _colorController.stream;
  Sink<Color> get colorSink => _colorController.sink;

  setColor(Color color) {
    colorSink.add(color);
  }

  void dispose() {
    // will be called automatically
    _colorController.close();
    super.dispose();
  }
}
