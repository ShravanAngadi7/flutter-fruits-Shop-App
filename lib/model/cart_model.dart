import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
// list of items on sale
  final List _shopItems = [
    //itemname, itemprice, imagepath, color
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.80", "lib/images/banana.png", Colors.yellow],
    ["Apple", "1.50", "lib/images/apple.png", Colors.red],
    ["Strawbery", "3.20", "lib/images/strawberry.jfif", Colors.pink],
  ];
  //list of cart items;
  List _cartItems = [];

  get ShopItems => _shopItems;
  get cartItems => _cartItems;

  //add item from cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart

  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate the total cart

  String calculatetotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
