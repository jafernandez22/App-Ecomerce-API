
import 'package:ecoshopping_ecommerce/models/Product.dart';

class Cart{
  final Product product;
  final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

//Demo datos

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[3], numOfItems: 1),
];