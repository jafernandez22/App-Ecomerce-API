import 'package:flutter/material.dart';

class SizeConfig{
  static late MediaQueryData _mediaQueryData; // Se inicializará en `init`
  static late double screenWidth;             // late + no nullable
  static late double screenHeight;
  static late Orientation orientation;
  static double defaultSize = 0.0;           // Valor por defecto

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
// 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}
// Get the proportionate height as per screen size
  double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth;
// 375 is the layout width that designer use
    return (inputWidth / 375.0) * screenWidth;
}