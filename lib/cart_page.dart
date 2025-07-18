import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Cart", style: Theme.of(context).textTheme.titleLarge),
          ),
        ),
        body: cart.isEmpty
            ? const Center(child: Text('Your cart is empty'))
            : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final cartItem = cart[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        cartItem['imageUrl'] as String,
                      ),
                      radius: 30,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Provider.of<CartProvider>(
                          context,
                          listen: false,
                        ).removeProduct(index);
                      },
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                    title: Text(
                      cartItem['title'].toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text("Size: ${cartItem['size']}"),
                  );
                },
              ),
      ),
    );
  }
}
