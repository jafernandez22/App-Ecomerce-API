//fomnta buena prctica
import 'package:ecoshopping_ecommerce/components/default_button.dart';
import 'package:ecoshopping_ecommerce/constants.dart';
import 'package:ecoshopping_ecommerce/screens/home/home_screen.dart';
import 'package:ecoshopping_ecommerce/screens/splash/components/body.dart';
import 'package:ecoshopping_ecommerce/screens/splash/components/splash_content.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  //Esta lista es para las imagenes para el deslizador
  List<Map<String, String>> splashData = [
    {
      "text": "Bienvenido a EcoShopping, Empieza a comprar!",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Te ayudamos a conectarte con la tienda \nalredor de todo el mundo",
      "image": "assets/images/freepik__upload__2400.png"
    },
    {
      "text": "Comprar es demasiado facil \nquedate en casa con nosotros",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                //Deslizador de splash
                itemBuilder: (context, index){
                  //itembuilder crea la instancia
                  final item = splashData[index]; //definimos lista
                  return SplashContent(
                    //mandamos los parametros a slashcontent
                      text: item['text']!,
                      image: item['image']!,
                  );
                },
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)
                    ),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length,
                                (index) => buildDot(index: index)
                        ),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "Continuar",
                        press: (){
                          //Aqui se define la ruta que se traslada despues de presionar el boton continuar
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

  //Contenedor de puntos
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: FAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? FPrimaryColor: Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}




