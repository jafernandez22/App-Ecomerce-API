import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/Product.dart';
import '../../size_confing.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product, required this.pressOnSeeMore,
  });

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? Color(0xFFFFE6E6)
                    : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
            ),
            child: SvgPicture.asset(
              "assets/icons/heart-circle.svg",
              color: product.isFavourite
                  ? Color(0xFFFF4848)
                  : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)
          ),
          child: Text(
            product.descripcion,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          //boton de ver mas detalles
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: [
                Text(
                  "Ver mas detallles",
                  style: TextStyle(color: FPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios,
                  size: 12, color: FPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}