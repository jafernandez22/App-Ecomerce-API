import 'package:flutter/material.dart';

import '../size_confing.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key, required this.iconData, required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor:  Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        //Regreso boton configuracion
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}