import 'category.dart';
import 'product.dart';

final List<Category> DUMMY_CATEGORIES = [
  Category(id: 'c1', title: 'Cakes', imageUrl: 'assets/images/cakes/1.png'),
  Category(id: 'c2', title: 'Cupcakes', imageUrl: 'assets/images/cakes/2.png'),
  Category(id: 'c3', title: 'Cookies', imageUrl: 'assets/images/cakes/3.png'),
];

final List<Product> DUMMY_PRODUCTS = [
  Product(
    id: 'p1',
    title: 'Chocolate Cake',
    description: 'Delicious chocolate cake',
    price: 20.0,
    imageUrl: 'assets/images/cakes/3.png',
    categoryId: 'c1',
  ),
  Product(
    id: 'p2',
    title: 'Vanilla Cupcake',
    description: 'Tasty vanilla cupcake',
    price: 5.0,
    imageUrl: 'assets/images/cakes/2.png',
    categoryId: 'c2',
  ),
  Product(
    id: 'p3',
    title: 'Chocolate Chip Cookie',
    description: 'Crispy chocolate chip cookie',
    price: 2.0,
    imageUrl: 'assets/images/cakes/1.png',
    categoryId: 'c3',
  ),
];
