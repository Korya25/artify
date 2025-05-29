import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      child: Image.asset(
        image,
        height: 220,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
