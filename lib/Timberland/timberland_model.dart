import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class TimberlandModel {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final imgPath;
  final String idealfor;

  TimberlandModel({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
    this.idealfor,
  });

  static List<TimberlandModel> list = [
    TimberlandModel(
      name: "Timberland",
      desc:
          "Brown silver award winning (LWG) tanned full grain leather boots, waterproof construction, padded ankle support, nylon lace up fastening, PrimaLoft 400g insulation, leather lining, anti fatigue footbed, rubber tread sole. In 1973, a legendary workboot was born in the small New Hampshire town of Newmarket. Founded by Sidney Swartz, Timberland is renowned for its selection of weather resistant, hardwearing boots that include their signature 6 inch heritage model.",
      price: 200,
      color: Bgcolor.brownyellowColor,
      brand: "Timberland",
      imgPath: "S8.png",
      idealfor: "Men",
    ),
  ];
}
