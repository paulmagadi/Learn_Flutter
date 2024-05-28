import 'package:flutter/material.dart';
import '../models/data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake Store'),
      ),
      body: CategoryView(),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      shrinkWrap: true, // Add this line
      physics: NeverScrollableScrollPhysics(), // Add this line
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: DUMMY_CATEGORIES.length,
      itemBuilder: (ctx, index) {
        final catData = DUMMY_CATEGORIES[index];
        return CategoryItem(
          id: catData.id,
          title: catData.title,
          imageUrl: catData.imageUrl,
        );
      },
    );
  }
}
