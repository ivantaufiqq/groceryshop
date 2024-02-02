import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "12.000", "lib/images/avocado.png", Colors.green],
    ["Banana", "10.000", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "15.000", "lib/images/chicken.png", Colors.brown],
    ["Water", "8.000", "lib/images/water.png", Colors.blue],
  ];

  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(3);
  }
}
