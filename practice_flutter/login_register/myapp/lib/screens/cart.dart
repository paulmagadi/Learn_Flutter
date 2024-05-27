import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    SingleChildScrollView(
      child: Row(
        children: [
          Text('Cart')
        ],
      ),
    ));
  }
}