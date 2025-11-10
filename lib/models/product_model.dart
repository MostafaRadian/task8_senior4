import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final IconData icon;
  bool added;
  int quantity;

  Product({
    required this.name,
    required this.price,
    required this.icon,
    this.added = false,
    this.quantity = 0,
  });
}
