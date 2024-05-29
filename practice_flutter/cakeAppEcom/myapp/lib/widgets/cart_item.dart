
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartItemWidget extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final int quantity;
  final double price;

  CartItemWidget({
    required this.id,
    required this.productId,
    required this.title,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: FittedBox(
                child: Text('\$$price'),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('$quantity x'),
              IconButton(
                icon: Icon(Icons.delete_forever_outlined),
                onPressed: () {
                  cart.removeItem(productId);
                },
                color: Theme.of(context).colorScheme.error,
              ),
            ],
          ),
        ),
      ),
    );
  }
}