import 'package:flutter/cupertino.dart';

class Food{
  final String name;
  final String description;
  final String imagePath;
  final double Price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food ({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.Price,
    required this.category,
    required this.availableAddons,

  });

}

//Food categories
enum FoodCategory{
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//Food Addons

class Addon{
  String name;
  double price;

  Addon({
  required this.name,
    required this.price
});
}