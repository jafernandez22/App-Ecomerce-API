import 'package:ecoshopping_ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_confing.dart';

//Aqui se define los parametros para el carrusel
class SpecialOfferts extends StatelessWidget {
  const SpecialOfferts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Especial para ti",
          press: (){},
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //Aqui esta el carrusel con parametros
              SpecialOfferCard(
                image: "assets/images/bannercelprubb.jpg",
                category: "Samsung",
                numOfBrands: 18,
                press: (){} ,
              ),
              SpecialOfferCard(
                image: "assets/images/bannerstockropa1.jpg",
                category: "Ropa",
                numOfBrands: 24,
                press: (){} ,
              ),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,

              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                    TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(text: "$numOfBrands entradas"),
                        ]
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}