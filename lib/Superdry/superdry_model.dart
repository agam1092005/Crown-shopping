import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class SuperdryModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  SuperdryModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<SuperdryModel> list = [
    SuperdryModel(
      name: "Camo Down Vest",
      desc:
          "Superdry men's Icon Military Service jacket. Not hiding where its inspiration comes from, the Icon Military Service jacket shows all the hallmarks of its heritage with the addition of Superdry styling. Featuring a multi-pocket design with webbing detail throughout, this jacket has a zip and popper front fastening, popper cuffs and a hood with draw cord adjuster and a turned back brim. Inside the jacket is fully lined with a Superdry quilt pattern.",
      price: 325,
      brand: "Superdry",
      color: Bgcolor.lightbrown,
      imgPath: "M1.png",
      idealfor: "Men",
    ),
  ];
}
