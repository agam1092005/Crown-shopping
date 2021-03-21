import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class LPModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  LPModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<LPModel> list = [
    LPModel(
      name: "Pink T-shirt",
      desc:
          "Complement your everyday style with this Pink shirt from Louis Philippe by House of Louis Philippe.",
      price: 25,
      brand: "Louis Philippe",
      color: Bgcolor.pink,
      imgPath: "M4.png",
      idealfor: "Men",
    ),
    LPModel(
      name: "Burgundy T-shirt",
      desc:
          "Complement your everyday style with this Burgundy shirt from Louis Philippe by House of Louis Philippe.",
      price: 25,
      brand: "Louis Philippe",
      color: Bgcolor.burgundy,
      imgPath: "M6.png",
      idealfor: "Men",
    ),
  ];
}
