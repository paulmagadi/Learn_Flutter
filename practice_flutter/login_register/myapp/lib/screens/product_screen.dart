import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
import '../main.dart'; // Import DUMMY_PRODUCTS

class ProductsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  ProductsScreen({
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    final categoryProducts = DUMMY_PRODUCTS.where((prod) {
      return prod.categoryId == categoryId;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
            id: categoryProducts[index].id,
            title: categoryProducts[index].title,
            imageUrl: categoryProducts[index].imageUrl,
            price: categoryProducts[index].price,
          );
        },
        itemCount: categoryProducts.length,
      ),
    );
  }
}
