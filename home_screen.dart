import 'package:flutter/material.dart';
import 'product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Baby Shoes',
      'price': 'Rs. 1,500',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Baby Shirt',
      'price': 'Rs. 900',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Baby Toy',
      'price': 'Rs. 700',
      'image': 'https://via.placeholder.com/150',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BabyShopHub')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(product['image']!, width: 50, height: 50),
              title: Text(product['name']!),
              subtitle: Text(product['price']!),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
