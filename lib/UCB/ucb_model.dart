import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class UCBModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  UCBModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<UCBModel> list = [
    UCBModel(
      name: "Floral Shirt",
      desc: "United Colors of Benetton denim leaf printed shirt.",
      price: 20,
      brand: "United Colors of Benetton",
      color: Bgcolor.darkblue,
      imgPath: "M2.png",
      idealfor: "Men",
    ),
  ];
}
