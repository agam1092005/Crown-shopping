import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class Forever21Model {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  Forever21Model({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<Forever21Model> list = [
    Forever21Model(
      name: "Striped Sweater",
      desc:
          "Flaunt your style with this Striped sweater from Forever 21. Tailored in regular fit, this acrylic sweater is light in weight and will keep you at ease all day long. Featuring a crew neck, full sleeves and striped pattern, this sweater holds a superlative attractiveness. Team this sweater with a pair of denims and sandals to look effortlessly stylish.",
      price: 45,
      brand: "Forever 21",
      color: Bgcolor.brown,
      imgPath: "W5.png",
      idealfor: "Women",
    ),
  ];
}
