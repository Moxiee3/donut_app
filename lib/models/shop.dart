import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  //FoodMenu
  final List<Food> _foodMenu = [
    //donut1
    Food(
      name: "donut1",
      price: "21.00",
      imagePath: "assets/careemy.png",
      rating: "4.9",
    ),

    Food(
      name: "donut2",
      price: "21.00",
      imagePath: "assets/decadent.png",
      rating: "4.9",
    ),

    Food(
      name: "donut2",
      price: "21.00",
      imagePath: "assets/decadent.png",
      rating: "4.9",
    ),
  ];

  //customer cart

  List<Food> _cart = [];

  //gettter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
