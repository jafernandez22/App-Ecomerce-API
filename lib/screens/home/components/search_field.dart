import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_confing.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: SizeConfig.screenWidth * 0.6, //60% de ancho
      //height: 50,
      decoration: BoxDecoration(
        color: FSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value){
          //Valor de busqueda
        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Buscar Producto",
            prefixIcon: Icon(Icons.search),
            contentPadding:  EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(9),
            )
        ),
      ),
    );
  }
}