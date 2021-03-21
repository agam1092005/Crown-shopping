import 'package:flutter/material.dart';

class OnlyModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  OnlyModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<OnlyModel> list = [
    OnlyModel(
      name: "Blue Tanktop",
      desc:
          "A front runner in western fashion, at ONLY you are bound to find some of the trendiest western dresses, tops for girls and various other statement pieces. Following our philosophy of uniqueness and embracing your inner strengths, only online shopping will empower your wardrobe.",
      price: 25,
      brand: "ONLY",
      color: Colors.teal,
      imgPath: "W1.png",
      idealfor: "Women",
    ),
  ];
}
