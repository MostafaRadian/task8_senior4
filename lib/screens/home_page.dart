import 'package:flutter/material.dart';
import 'package:local_provider/models/product_model.dart';
import 'package:local_provider/providers/product_provider.dart';
import 'package:local_provider/screens/cart_page.dart';
import 'package:local_provider/widgets/product_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: context.read<ProductProvider>().products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            Product item = context.read<ProductProvider>().products[index];
            return ProductItem(item: item);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        },
        child: Icon(Icons.shopping_cart, color: Colors.teal),
      ),
    );
  }
}
