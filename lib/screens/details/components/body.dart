import 'package:flutter/material.dart';
import 'package:flutter_application_2/constrants.dart';
import 'package:flutter_application_2/model/Product.dart';
import 'package:flutter_application_2/screens/details/components/add_to_cart.dart';
import 'package:flutter_application_2/screens/details/components/color_and_size.dart';
import 'package:flutter_application_2/screens/details/components/counter_with_fev_btn.dart';

import 'description.dart';
import 'product_tile_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.1,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
