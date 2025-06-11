import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, descripcion;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite= false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.descripcion,
});
}

//Productos de Prueba
List<Product> demoProducts = [
  Product(
    id: 1,
      images: [
        "assets/images/mando1prueba.jpg",
        "assets/images/mando2prueba.jpg",
        "assets/images/poleraprueba.jpg",
        "assets/images/laptopprueba.jpg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Control Xbox para 360",
      price: 64.99,
      descripcion: descripcion,
      rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
      images: [
        "assets/images/mando2prueba.jpg"
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
    title: "Control Xbox para One",
    price: 99.99,
    descripcion: descripcion,
    rating: 5.8,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/laptopprueba.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Laptop Lenovo",
    price: 200.99,
    descripcion: descripcion,
    rating: 6.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/poleraprueba.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Polera",
    price: 20.99,
    descripcion: descripcion,
    rating: 3.8,
    isFavourite: true,
  ),
];

const String descripcion = "El control de Xobox 1 es epecial por no tener Drift asi como tiene buenos precios";