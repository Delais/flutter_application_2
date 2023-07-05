import 'package:flutter/material.dart';
import 'package:flutter_application_2/constrants.dart';
import 'package:flutter_application_2/model/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
