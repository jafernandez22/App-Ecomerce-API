import 'package:ecoshopping_ecommerce/details/components/body.dart';
import 'package:ecoshopping_ecommerce/models/Product.dart';
import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routName = "/details";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}



//Debemos pasar nuestross producos a nuestras pantallas de detalles
//y tambien debemos usar la ruta por lo cual debemos crear la clase de argumentos

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});

}
