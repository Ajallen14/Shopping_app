import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Map<String, Object> product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Details"))),

      body: Column(
        children: [
          Text(
            product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(),
          Image.asset(product['imageUrl'] as String),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
