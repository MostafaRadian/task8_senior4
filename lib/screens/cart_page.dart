import 'package:flutter/material.dart';
import 'package:local_provider/models/product_model.dart';
import 'package:local_provider/providers/product_provider.dart';
import 'package:local_provider/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<ProductProvider>(
              builder: (context, value, child) => ListView.builder(
                itemCount: value.cartList.length,
                itemBuilder: (context, index) {
                  Product item = value.cartList[index];

                  return CartItem(item: item);
                },
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(color: Colors.teal),
            child: Center(
              child: Consumer<ProductProvider>(
                builder: (context, value, child) => Text(
                  "Total: \$${value.calculateTotal()}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
