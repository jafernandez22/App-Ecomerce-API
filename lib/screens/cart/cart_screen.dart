import 'package:ecoshopping_ecommerce/components/default_button.dart';
import 'package:ecoshopping_ecommerce/constants.dart';
import 'package:ecoshopping_ecommerce/models/Cart.dart';
import 'package:ecoshopping_ecommerce/screens/cart/components/body.dart';
import 'package:ecoshopping_ecommerce/size_confing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
              "Tu Carrito",
              style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15), 
          horizontal: getProportionateScreenWidth(30)
      ),
      //Usaremos esa altura solo para la demo
      //height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
        BoxShadow(
          offset: Offset(0, -15),
          blurRadius: 20,
          color: Color(0xFFDADADA).withOpacity(0.15),
        ),
      ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt-text.svg"),
                ),
                Text("Codigo de barras"),
                // el widt esta arreglado por eso usamos constante
                const SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios, size: 12, color: FTextColor,)
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text.rich(
                  TextSpan(
                    text: "Total:\n ",
                    children: [
                      TextSpan(
                          text: "\$337.15", style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ]
                  ),
              ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                      text: "Check Out",
                      press: (){},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
