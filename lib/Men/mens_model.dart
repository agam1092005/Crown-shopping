import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class MenModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  MenModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<MenModel> list = [
    MenModel(
      name: "Camo Down Vest",
      desc:
      "Superdry men's Icon Military Service jacket. Not hiding where its inspiration comes from, the Icon Military Service jacket shows all the hallmarks of its heritage with the addition of Superdry styling. Featuring a multi-pocket design with webbing detail throughout, this jacket has a zip and popper front fastening, popper cuffs and a hood with draw cord adjuster and a turned back brim. Inside the jacket is fully lined with a Superdry quilt pattern.",
      price: 325,
      brand: "Superdry",
      color: Bgcolor.lightbrown,
      imgPath: "M1.png",
      idealfor: "Men",
    ),
    MenModel(
      name: "Floral Shirt",
      desc:
      "United Colors of Benetton denim leaf printed shirt.",
      price: 20,
      brand: "United Colors of Benetton",
      color: Bgcolor.darkblue,
      imgPath: "M2.png",
      idealfor: "Men",
    ),
    MenModel(
      name: "Black & White Longsleeve",
      desc:
      "Black and white printed T-shirt, has a round neck, long sleeves",
      price: 25,
      brand: "",
      color: Colors.grey,
      imgPath: "M3.png",
      idealfor: "Men",
    ),
    MenModel(
      name: "Pink T-shirt",
      desc:
      "Complement your everyday style with this Pink shirt from Louis Philippe by House of Louis Philippe.",
      price: 25,
      brand: "Louis Philippe",
      color: Bgcolor.pink,
      imgPath: "M4.png",
      idealfor: "Men",
    ),
    MenModel(
      name: "Jean Long Sleeve",
      desc:
      "Blue woven denim casual shirt with a washed effect, has a spread collar, a full button placket, a patch pocket, long sleeves, a curved hemline",
      price: 40,
      brand: "HIGHLANDER",
      color: Bgcolor.navyblue,
      imgPath: "M5.png",
      idealfor: "Men",
    ),
    MenModel(
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