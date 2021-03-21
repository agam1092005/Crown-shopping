import 'package:flutter/material.dart';

class ConverseModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  ConverseModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<ConverseModel> list = [
    ConverseModel(
      name: "Converse",
      desc:
          "The Converse Chuck Taylor All Star High 'Pony Hair' incorporates premium detailing and a trendy print to the timeless sneaker. From the side, the all-black suede upper looks like a typical stealthy Chuck, but face the shoe head on, and you'll see the high-top is revamped with pony hair material adorned in a black-and-white fawn pattern from toe to tongue. A monochromatic black sole rounds out the lace-up's design.",
      price: 110,
      color: Colors.black,
      brand: "Converse",
      imgPath: "S3.png",
      idealfor: "Men & Women",
    ),
  ];
}
