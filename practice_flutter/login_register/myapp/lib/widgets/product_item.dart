import 'package:flutter/material.dart';

import '../screens/product_details.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  void selectProduct(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProductDetailsScreen(
          productId: id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectProduct(context),
      child: GridTile(
        child: Image.network(imageUrl, fit: BoxFit.cover),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          subtitle: Text('\$$price'),
        ),
      ),
    );
  }
}

