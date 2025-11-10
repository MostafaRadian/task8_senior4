import 'package:flutter/material.dart';

class BasketWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const BasketWidget({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      onPressed: onPressed,
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}
