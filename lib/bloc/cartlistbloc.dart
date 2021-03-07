import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/bloc/provider.dart';
import 'package:food_delivery/models/fooditem.dart';
import 'package:rxdart/rxdart.dart';

class CartListbloc extends BlocBase {
  CartListbloc();

  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);
  CartProvider provider = CartProvider();

  Stream<List<FoodItem>> get listStream => _listController.stream;
  Sink<List<FoodItem>> get listSink => _listController.sink;

  addtoList(FoodItem foodItem) {
    listSink.add(provider.addtoList(foodItem));
  }

  removefromList(FoodItem foodItem) {
    listSink.add(provider.removefromList(foodItem));
  }

  @override
  void dispose() {
    // will be called automatically
    _listController.close();
    super.dispose();
  }
}
