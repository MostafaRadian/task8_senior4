import 'package:flutter/material.dart';
import 'package:local_provider/models/product_model.dart';

class CartItem extends StatelessWidget {
  Product item;
  CartItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: ListTile(
        leading: Icon(item.icon, size: 40, color: Colors.teal),
        title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Price: \$${item.price}"),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                
              },
            ),

            Text(
              "${item.quantity}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
    
  }
}
