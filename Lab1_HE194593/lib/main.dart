import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Homework',
      home: const ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        id: 1,
        name: 'Laptop',
        price: 1500,
        quantity: 5,
        description: 'Gaming Laptop',
        image: 'Laptop Image',
      ),
      Product(
        id: 2,
        name: 'Phone',
        price: 800,
        quantity: 10,
        description: 'Smart Phone',
        image: 'Phone Image',
      ),
      Product(
        id: 3,
        name: 'Headphone',
        price: 100,
        quantity: 20,
        description: 'Wireless Headphone',
        image: 'Headphone Image',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.shopping_bag,
                size: 40,
              ),
              title: Text(product.name),
              subtitle: Text(
                'ID: ${product.id}\n'
                    'Price: \$${product.price}\n'
                    'Quantity: ${product.quantity}\n'
                    'Description: ${product.description}\n'
                    'Image: ${product.image}',
              ),
            ),
          );
        },
      ),
    );
  }
}