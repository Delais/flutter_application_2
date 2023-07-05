import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/Product.dart';
import 'package:flutter_application_2/screens/details/components/body.dart';
import 'package:flutter_svg/svg.dart';

import '../../constrants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          child: SvgPicture.asset("assets/icons/back.svg"),
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg"),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
