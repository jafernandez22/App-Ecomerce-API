import 'package:ecoshopping_ecommerce/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_confing.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          //Configuracion de la campana
          IconBtnWithCounter(
            svgSrc: "assets/icons/cart-outline.svg",
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/bell-outline.svg",
            numOfItems: 3,
            press: () {},
          )
        ],
      ),
    );
  }
}


