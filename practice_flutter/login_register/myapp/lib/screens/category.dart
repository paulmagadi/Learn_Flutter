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
  const CategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  id: catData.id,
                  title: catData.title,
                  imageUrl: catData.imageUrl,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
