import 'package:flutter/material.dart';

class AdidasModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  AdidasModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<AdidasModel> list = [
    AdidasModel(
      name: "Adidas NMD",
      desc:
          "Give them a head start on streetwear style. The NMD 360 combines throwback \'80s racer style with a streamlined shape. A stretchy mesh upper makes them easy to slip on and off. The bendy outsole flexes with every move.",
      price: 220,
      color: Colors.black,
      brand: "Adidas",
      imgPath: "S1.png",
      idealfor: "Men",
    ),
    AdidasModel(
      name: "Adidas Yeezy",
      desc:
          "The YEEZY BOOST 350 V2 TRIPLE WHITE features a Primeknit upper, full length boost and heel tab. A rubble outsole and TPU sidewalls create a striking effect while providing superior traction. The midsole utilizes ADIDAS innovative BOOST technology to create a durable, shock- resistant and responsive sole.",
      price: 280,
      color: Colors.grey,
      brand: "Adidas",
      imgPath: "S2.png",
      idealfor: "Men",
    ),
  ];
}
