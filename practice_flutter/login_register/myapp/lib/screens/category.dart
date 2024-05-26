import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    SingleChildScrollView(
      child: Row(
        children: [
          Text('Hello')
        ],
      ),
    ));
  }
}