import 'package:flutter/material.dart';
import 'package:shop_app/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //APP BAR
        appBar: AppBar(
          title: Center(
            child: Text("Cart", style: Theme.of(context).textTheme.titleLarge),
          ),
        ),

        //LIST OF ITEMS
        body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartItem = cart[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(cartItem['imageUrl'] as String),
                radius: 40,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red),
              ),
              title: Text(
                cartItem['title'].toString(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: Text("Size : ${cartItem['size']}"),
            );
          },
        ),
      ),
    );
  }
}
