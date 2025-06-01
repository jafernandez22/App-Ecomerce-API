import 'package:ecoshopping_ecommerce/constants.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({required this.text, required this.image});
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "ECOSHOPPING",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: FPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2), //Espacio
        Image.asset(
          image,
          height: getProportionateScreenHeight(285),
          width: getProportionateScreenWidth(255),
        ),
      ],
    );
  }
}