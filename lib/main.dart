import 'package:ecoshopping_ecommerce/constants.dart';
import 'package:ecoshopping_ecommerce/routes.dart';
import 'package:ecoshopping_ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
            bodyLarge: TextStyle(color: FTextColor),
            bodyMedium: TextStyle(color: FTextColor),
            bodySmall: TextStyle(color: FTextColor)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      //home: SplashScreen(),
      //No olvidar del nombre
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}