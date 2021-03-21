import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class NikeModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  NikeModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<NikeModel> list = [
    NikeModel(
      name: "Nike Air Force 1 - High",
      desc:
      "Elevate your game with the force of OG hoops. From leather that's smoother than backboard glass to the aggressive stance that says 'bring it on', it's everything you know best: crisp overlays, bold accents and the perfect amount of flash to make you shine. Its padded, mid-cut collar with the classic strap closure offers heritage styling and added support. Perforations keep you cool as you heat up the streets. It never left, but the Nike Air Force 1 Mid '07 is back.",
      price: 160,
      color: Colors.grey,
      brand: "Nike",
      imgPath: "S4.png",
      idealfor: "Men & Women",
    ),
    NikeModel(
      name: "Nike Air Jordan Retro 1 - High",
      desc: "Air Jordan 1 Retro High OG Men's Shoe OLD-SCHOOL LOOK, LEGENDARY PERFORMANCE. Air Jordan 1 Retro High OG Men's Shoe combines a genuine and synthetic leather. Genuine and synthetic leather upper for durability and a premium look. Encapsulated heel Air-Sole unit provides lightweight cushioning.",
      price: 160,
      color: Bgcolor.redColor,
      brand: "Nike",
      imgPath: "S5.png",
      idealfor: "Men & Women",
    ),
    NikeModel(
      name: "Nike Air Jordan Retro 1 - High",
      desc: "Air Jordan 1 Retro High OG Men's Shoe OLD-SCHOOL LOOK, LEGENDARY PERFORMANCE. Air Jordan 1 Retro High OG Men's Shoe combines a genuine and synthetic leather. Genuine and synthetic leather upper for durability and a premium look. Encapsulated heel Air-Sole unit provides lightweight cushioning.",
      price: 160,
      color: Bgcolor.brownyellowColor,
      brand: "Nike",
      imgPath: "S6.png",
      idealfor: "Men & Women",
    ),
    NikeModel(
      name: "Nike Air Jordan Retro 1 - DIOR EDITION",
      desc: "For the Men’s Fall 2020 Runway show in Miami, Dior and Kim Jones partnered with Jordan Brand to unveil the limited-edition Air Jordan 1 High OG Dior sneaker. A collection of ready-to-wear and accessories completes the collaboration, and a low version of the Air Jordan 1 OG Dior rounds out the range.",
      price: 190,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "S7.png",
      idealfor: "Men",
    ),
  ];
}