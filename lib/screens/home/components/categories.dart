import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_confing.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    //Lista de las tiendas
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/cellphone-link.svg", "text": "Celulares"},
      {"icon": "assets/icons/ninja.svg", "text": "Comida"},
      {"icon": "assets/icons/sony-playstation.svg", "text": "Juegos"},
      {"icon": "assets/icons/cellphone-link.svg", "text": "Cocina"},
      {"icon": "assets/icons/paper-roll-outline.svg", "text": "Aseo"},
    ];
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
                  (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: (){},
              )
          )
        ],),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.icon, required this.text, required this.press,
  });

  final String icon, text;
  final GestureDragCancelCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5,),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}