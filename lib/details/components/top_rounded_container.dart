import 'package:flutter/material.dart';

import '../../size_confing.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key, required this.color, required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
        ),
      ),
      child: child,
    );
  }
}