import 'package:flutter/material.dart';
import 'package:flutter_application_2/constrants.dart';
import 'package:flutter_application_2/model/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    product.color, BlendMode.srcIn),
                child: SvgPicture.asset(
                    "assets/icons/add_to_cart.svg"),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18)),
                    backgroundColor: product.color),
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
