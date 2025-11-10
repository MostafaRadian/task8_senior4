import 'package:flutter/material.dart';
import 'package:local_provider/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  const ProductItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: 70, color: Colors.teal),
          Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text("\$${item.price}"),
          const SizedBox(height: 8),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: item.added ? Colors.redAccent : Colors.teal,
              foregroundColor: Colors.white,
            ),
            child: Text(item.added ? "Added ✓" : "Add to Cart"),
          ),
        ],
      ),
    );
  }
}
