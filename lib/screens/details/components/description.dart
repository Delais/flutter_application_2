import 'package:flutter/material.dart';
import 'package:flutter_application_2/constrants.dart';
import 'package:flutter_application_2/model/Product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
