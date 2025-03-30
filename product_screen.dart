import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, String> product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['name']!)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(product['image']!, width: 150, height: 150),
          const SizedBox(height: 20),
          Text(
            product['name']!,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            product['price']!,
            style: const TextStyle(fontSize: 18, color: Colors.green),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
