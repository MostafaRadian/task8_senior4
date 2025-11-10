import 'package:flutter/material.dart';
import 'package:local_provider/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> products = [
    Product(name: "Smart Watch", price: 120.0, icon: Icons.watch),
    Product(name: "Headphones", price: 80.0, icon: Icons.headphones),
    Product(name: "Laptop", price: 950.0, icon: Icons.laptop),
    Product(name: "Camera", price: 400.0, icon: Icons.camera_alt),
    Product(name: "ٍSmartPhone", price: 500.0, icon: Icons.phone_android),
    Product(name: "Tablet", price: 400.0, icon: Icons.tablet),
    Product(name: "Bag", price: 90.0, icon: Icons.wallet_travel),
    Product(name: "Cable", price: 40.0, icon: Icons.cable),
  ];
  List<Product> cartList = [];

  void addToCart(Product product) {
    if (!product.added) {
      product.added = true;
      product.quantity++;
      cartList.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    if (product.added) {
      product.added = false;
      product.quantity = 0;
      cartList.remove(product);
    }
    notifyListeners();
  }

  void decreseItems(Product item) {
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      removeFromCart(item);
    }
    notifyListeners();
  }

  void increaseItem(Product item) {
    item.quantity++;
    notifyListeners();
  }

  double calculateTotal() {
    double total = 0;
    for (Product item in cartList) {
      total += item.quantity * item.price;
    }
    return total;
  }
}
