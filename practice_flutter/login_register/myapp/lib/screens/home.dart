import 'package:flutter/material.dart';
import 'package:myapp/screens/category.dart';

import '../components/home/banner_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        BannerCarousel(),
        CategoryView()
      ]),
    );
  }
}
