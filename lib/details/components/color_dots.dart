import 'package:flutter/material.dart';

import '../../components/rounded_icon_btn.dart';
import '../../constants.dart';
import '../../models/Product.dart';
import '../../size_confing.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    //Para la demo usaremos un valor arreglado
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)
      ),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
                  (index) => ColorDot(
                color: product.colors[index],
                isSelected: selectedColor == index,
              )
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: (){},
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconBtn(
            iconData: Icons.add,
            press: (){},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,this.isSelected =false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color de la base de datos
        //color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? FPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          )
      ),
    );
  }
}