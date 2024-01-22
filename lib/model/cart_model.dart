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

  get shopItems => _shopItems;
}
