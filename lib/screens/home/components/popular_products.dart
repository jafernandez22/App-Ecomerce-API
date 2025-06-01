import 'package:ecoshopping_ecommerce/details/details_screen.dart';
import 'package:ecoshopping_ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_confing.dart';

//Parametros producto popular
class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Productos Populares",
          press: (){},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //aqui parametro de list de productos editar para la Api
              ...List.generate(
                demoProducts.length, (index) => ProductCard(
                product: demoProducts[index],
                press: () => Navigator.pushNamed(
                    context, DetailsScreen.routName,
                    arguments: ProductDetailsArguments(
                        product: demoProducts[index]
                    ),
                ),
              ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}