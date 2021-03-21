import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class HomeModel {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final imgPath;
  final String idealfor;

  HomeModel({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
    this.idealfor,
  });

  static List<HomeModel> list = [
    HomeModel(
      name: "Adidas Yeezy",
      desc:
          "The YEEZY BOOST 350 V2 TRIPLE WHITE features a Primeknit upper, full length boost and heel tab. A rubble outsole and TPU sidewalls create a striking effect while providing superior traction. The midsole utilizes ADIDAS innovative BOOST technology to create a durable, shock- resistant and responsive sole.",
      price: 280,
      color: Colors.grey,
      brand: "Adidas",
      imgPath: "S2.png",
      idealfor: "Men",
    ),
    HomeModel(
      name: "Nike Air Jordan Retro 1 - High",
      desc:
          "Air Jordan 1 Retro High OG Men's Shoe OLD-SCHOOL LOOK, LEGENDARY PERFORMANCE. Air Jordan 1 Retro High OG Men's Shoe combines a genuine and synthetic leather. Genuine and synthetic leather upper for durability and a premium look. Encapsulated heel Air-Sole unit provides lightweight cushioning.",
      price: 160,
      color: Bgcolor.redColor,
      brand: "Nike",
      imgPath: "S5.png",
      idealfor: "Men",
    ),
    HomeModel(
      name: "Nike Air Jordan Retro 1 - DIOR EDITION",
      desc:
          "For the Men’s Fall 2020 Runway show in Miami, Dior and Kim Jones partnered with Jordan Brand to unveil the limited-edition Air Jordan 1 High OG Dior sneaker. A collection of ready-to-wear and accessories completes the collaboration, and a low version of the Air Jordan 1 OG Dior rounds out the range.",
      price: 190,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "S7.png",
      idealfor: "Men",
    ),
  ];
}
