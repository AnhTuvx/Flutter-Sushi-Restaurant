import 'package:flutter/material.dart';
import 'package:sushi_restaurant_flutter/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    //salmon sushi
    Food(
        name: "Tuna sushi",
        price: "50",
        imagePath: "lib/images/food_16145708.png",
        rating: "3.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/sushi_820582.png",
        rating: "4.9"),
  ];
  //customer cart
  List<Food> _cart = [];
  //get  method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;
  void addToCart(Food fooditem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(fooditem);
    }
    notifyListeners();
  }

  void removeFromCart(Food fooditem) {
    _cart.remove(fooditem);
    notifyListeners();
  }
}
