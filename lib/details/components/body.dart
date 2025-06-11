import 'package:ecoshopping_ecommerce/components/default_button.dart';
import 'package:ecoshopping_ecommerce/details/components/product_description.dart';
import 'package:ecoshopping_ecommerce/details/components/product_images.dart';
import 'package:ecoshopping_ecommerce/details/components/top_rounded_container.dart';
import 'package:ecoshopping_ecommerce/models/Product.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //Todo lo que tenga que ver product deriva de la clase producto para conectar
    return SingleChildScrollView(
      child: Column(
          children: [
            ProductImages(product: product),
            TopRoundedContainer(
              color: Colors.white,
              child: Column( //esta es linea 23
                children: [
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: (){},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.15,
                                  right: SizeConfig.screenWidth * 0.15,
                                top: getProportionateScreenWidth(15),
                                bottom: getProportionateScreenWidth(40),
                              ),
                              child: DefaultButton(
                                  text: "Agregar al Carrito",
                                  press: (){},
                              ),
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
      ),
    );
  }
}








