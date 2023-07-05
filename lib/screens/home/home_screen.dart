import 'package:flutter/material.dart';
import 'package:flutter_application_2/constrants.dart';
import 'package:flutter_application_2/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            child: SvgPicture.asset("assets/icons/cart.svg"),
          ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin /2)
      ],
    );
  }
}
