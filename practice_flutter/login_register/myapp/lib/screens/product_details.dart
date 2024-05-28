import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/dummy_data.dart'; // Assuming you have this data file

class ProductDetailsScreen extends StatelessWidget {
  final String productId;

  ProductDetailsScreen({
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    final selectedProduct = DUMMY_PRODUCTS.firstWhere((prod) => prod.id == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(selectedProduct.imageUrl),
            SizedBox(height: 10),
            Text(
              '\$${selectedProduct.price}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                selectedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
