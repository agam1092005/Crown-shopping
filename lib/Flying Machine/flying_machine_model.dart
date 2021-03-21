import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class FlyingMachineModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  FlyingMachineModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<FlyingMachineModel> list = [
    FlyingMachineModel(
      name: "Blue Denim Jacket",
      desc:
          "Layer up in style with this impeccably faded denim jacket from Flying Machine. The breathable fabric construction allows all-day comfort wherever you go. Wear yours with a graphic tee and ripped boyfriend jeans.",
      price: 90,
      brand: "Flying Machine",
      color: Bgcolor.navyblue,
      imgPath: "J2.png",
      idealfor: "Men & Women",
    ),
    FlyingMachineModel(
      name: "Grey Denim Jacket",
      desc:
          "Spruce up your outerwear essentials with this denim jacket from Flying Machine. Woven from breathable cotton, it's cut in a waist-length silhouette and has long sleeves. Wear yours with a simple tee and high-waist jeans.",
      price: 90,
      brand: "Flying Machine",
      color: Colors.grey,
      imgPath: "J3.png",
      idealfor: "Men & Women",
    ),
  ];
}
