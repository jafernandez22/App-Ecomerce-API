import 'package:ecoshopping_ecommerce/screens/splash/components/body.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //Se debe usar en la pantalla inicio para las configuraciones
    return Scaffold(
      body: Body(),
    );
  }
}

