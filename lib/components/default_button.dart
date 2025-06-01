import 'package:ecoshopping_ecommerce/constants.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

//Boton
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final VoidCallback press; // Mejor tipo para funciones sin parámetros

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: FPrimaryColor, // Color de fondo
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16), // Ajuste de padding
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}