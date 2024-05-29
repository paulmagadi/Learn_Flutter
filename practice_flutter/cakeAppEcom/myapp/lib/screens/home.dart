import 'package:flutter/material.dart';
import 'package:myapp/screens/category.dart';
import '../components/home/banner_carousel.dart';
import 'product_list.dart';
import '../models/data.dart';

class HomeScreen extends StatelessWidget {
  final String searchQuery;

  const HomeScreen({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    final filteredProducts = searchQuery.isEmpty
        ? DUMMY_PRODUCTS
        : DUMMY_PRODUCTS.where((product) {
            return product.title.toLowerCase().contains(searchQuery.toLowerCase());
          }).toList();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 34),
                ),
              ],
            ),
            const CategoryView(),
            const SizedBox(height: 10),
            const BannerCarousel(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Products',
                  style: TextStyle(fontSize: 34),
                ),
              ],
            ),
            ProductsView(products: filteredProducts),
          ],
        ),
      ),
    );
  }
}
