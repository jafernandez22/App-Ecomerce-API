
import 'package:ecoshopping_ecommerce/screens/home/components/popular_products.dart';
import 'package:ecoshopping_ecommerce/screens/home/components/special_offers.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20),),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(30),),
              DiscountBanner(),
              SizedBox(height: getProportionateScreenWidth(30),),
              Categories(),
              SizedBox(height: getProportionateScreenWidth(30),),
              SpecialOfferts(),
              SizedBox(height: getProportionateScreenWidth(30),),
              PopularProducts(),
            ],
          )
        ),
    );
  }
}













