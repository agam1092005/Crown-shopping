
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class ZaraModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  ZaraModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<ZaraModel> list = [
    ZaraModel(
      name: "Tan Trench",
      desc:
          "The easy trench coat is an outerwear icon, ready to be styled with everything from jeans and trainers to floral midi dresses. The trench is perhaps the most versatile of all fashion coats and khaki, beige, navy and black are the most popular and versatile colours to try. Mix things up, and choose a design with statement details, and extra long or short proportions for a styling twist.",
      price: 185,
      brand: "ZARA WOMEN",
      color: Bgcolor.brown,
      imgPath: "J5.png",
      idealfor: "Women",
    ),
  ];
}
