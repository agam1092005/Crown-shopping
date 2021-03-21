import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class HomeModel3 {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final imgPath;
  final String idealfor;

  HomeModel3({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
    this.idealfor,
  });

  static List<HomeModel3> list = [
    HomeModel3(
      name: "Red Dots Dress",
      desc:
      "This red polka dot printed dress by Sheen Studio is crafted in cotton and features a V-neck, long sleeves with buttoned cuffs, potli buttons detail on the waist belt, soft gathers on the waistline, side slit pockets and a regular fit. Buy this dress online and style it with a pair of tan flats and pint-sized gold hoops to make a statement.",
      price: 80,
      brand: "Sheen Studio",
      color: Bgcolor.redColor,
      imgPath: "W4.png",
      idealfor: "Women",
    ),
    HomeModel3(
      name: "Blue Tanktop",
      desc:
      "",
      price: 25,
      brand: "",
      color: Colors.teal,
      imgPath: "W1.png",
      idealfor: "Women",
    ),
    HomeModel3(
      name: "Yellow Track Suit",
      desc:
      "",
      price: 135,
      brand: "",
      color: Bgcolor.mustard,
      imgPath: "W6.png",
      idealfor: "Women",
    ),
  ];
}
