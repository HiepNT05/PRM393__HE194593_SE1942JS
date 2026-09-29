import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageAsset;
  final double originalPrice;
  final double discountedPrice;
  final int discountPercentage;
  final double rating;
  final int reviews;
  final String description;

  Product({
    required this.name,
    required this.imageAsset,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discountPercentage,
    this.rating = 0.0,
    this.reviews = 0,
    this.description = "",
  });
}
