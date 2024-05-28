import 'package:flutter/material.dart';
import '../models/data.dart';
import '../widgets/product_item.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.all(15),
      itemCount: DUMMY_PRODUCTS.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2.7/3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) {
        final product = DUMMY_PRODUCTS[index];
        return ProductItem(
          id: product.id,
          title: product.title,
          imageUrl: product.imageUrl,
          price: product.price,
        );
      },
    );
  }
}
