import 'package:ecoshopping_ecommerce/details/details_screen.dart';
import 'package:ecoshopping_ecommerce/screens/cart/cart_screen.dart';
import 'package:ecoshopping_ecommerce/screens/home/home_screen.dart';
import 'package:ecoshopping_ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

//Usaremos nombre de ruta
//Todas las rutas estaran disponibles aca
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};