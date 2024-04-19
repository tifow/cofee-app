import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'coffee.dart';

class coffeeShop extends ChangeNotifier {
  // list of coffee shop
  final List<coffee> _shop = [
    coffee(
        name: "caano geel",
        price: "4.00",
        image: 'lib/images/coffee-cup (1).png'),
    coffee(
        name: "caano boore",
        price: "5.00",
        image: 'lib/images/coffee-cup (2).png'),
    coffee(
        name: "caano lo'",
        price: "6.00",
        image: 'lib/images/coffee-cup (3).png'),
    coffee(
      name: "caano ",
      price: "7.00",
      image: 'lib/images/coffee-cup.png',
    ),
  ];
  // list cart
  final List<coffee> _cart = [];
  // get list of coffee shop
  List<coffee> get shop => _shop;
  // get list of user cart
  List<coffee> get cart => _cart;

  // add item to the cart
  void additem(coffee coffee) {
    _cart.add(coffee);
    notifyListeners();
  }

  // remove item from the cart
  removeitem(coffee coffee) {
    _cart.remove(coffee);
    notifyListeners();
  }

  String totalprice() {
    double total = 0;
    for (int i = 0; i < _cart.length; i++) {
      total += double.parse(_cart[i].price);
    }
    return total.toString();
  }
}
