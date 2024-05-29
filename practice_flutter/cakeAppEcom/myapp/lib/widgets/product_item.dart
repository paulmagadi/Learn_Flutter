// import 'package:flutter/material.dart';
// import '../screens/product_details.dart';

// class ProductItem extends StatelessWidget {
//   final String id;
//   final String title;
//   final String imageUrl;
//   final double price;

//   ProductItem({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.price,
//   });

//   void selectProduct(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (ctx) => ProductDetailsScreen(
//           productId: id,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => selectProduct(context),
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             ClipRRect(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//               child: Image.asset(
//                 imageUrl,
//                 height: 150,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     '\$$price',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.grey,
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
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
    final cart = Provider.of<Cart>(context, listen: false);

    return GestureDetector(
      onTap: () => selectProduct(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              // borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Stack(
                children: [
                  Image.asset(
                    imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Positioned(
                  //   bottom: 2,
                  //   right: 2,
                  //   child: IconButton(
                  //     icon: Icon(Icons.add_shopping_cart_outlined),
                  //     color: Theme.of(context).colorScheme.secondary,
                  //     onPressed: () {
                  //       cart.addItem(id, price, title, 1);
                  //       ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content: Text(
                  //             'Added item to cart!',
                  //             textAlign: TextAlign.center,
                  //           ),
                  //           duration: Duration(seconds: 2),
                  //           action: SnackBarAction(
                  //             label: 'UNDO',
                  //             onPressed: () {
                  //               // Code to undo the addition
                  //             },
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow
                              .ellipsis, // This will add "..." at the end if the text overflows
                          maxLines:
                              1, // This ensures the text stays on a single line
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_shopping_cart_outlined),
                        onPressed: () {
                          cart.addItem(id, price, title, 1);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Added to cart!'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
