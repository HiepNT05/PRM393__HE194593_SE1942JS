import 'package:flutter/material.dart';
import 'ProductCardWidget.dart';
import 'ProductWidget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        name: 'iPhone 15',
        imageAsset: 'assets/images/iphone15.jpg',
        originalPrice: 1099,
        discountedPrice: 999,
        discountPercentage: 9,
      ),
      Product(
        name: 'Samsung S24',
        imageAsset: 'assets/images/samsung.jpg',
        originalPrice: 999,
        discountedPrice: 899,
        discountPercentage: 10,
      ),
      Product(
        name: 'MacBook Air',
        imageAsset: 'assets/images/macbook.jpg',
        originalPrice: 1299,
        discountedPrice: 1200,
        discountPercentage: 7,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Products', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCardWidget(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
