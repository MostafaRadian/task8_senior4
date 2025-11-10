import 'package:flutter/material.dart';
import 'package:local_provider/widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       "Your Cart",
    //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //     ),

    //     backgroundColor: Colors.teal,
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: [
    //       Expanded(
    //         child: ListView.builder(
    //           itemCount: 0,
    //           itemBuilder: (context, index) {
    //             final p = widget.products[index];

    //             return CartItem(item: );
    //           },
    //         ),
    //       ),

    //       Container(
    //         width: double.infinity,
    //         height: 50,
    //         decoration: BoxDecoration(color: Colors.teal),
    //         child: Center(
    //           child: Text(
    //             "Total: \$${total}",
    //             style: TextStyle(
    //               fontSize: 22,
    //               fontWeight: FontWeight.bold,
    //               color: Colors.white,
    //             ),
    //           ),
    //         ),
    //       ),

    //       SizedBox(height: 20),
    //     ],
    //   ),
    // );
  }
}
