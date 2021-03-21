import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class ShoeModel {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final imgPath;
  final String idealfor;

ShoeModel({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
    this.idealfor,
  });

  static List<ShoeModel> list = [
    ShoeModel(
      name: "Adidas NMD",
      desc:
          "Give them a head start on streetwear style. The NMD 360 combines throwback \'80s racer style with a streamlined shape. A stretchy mesh upper makes them easy to slip on and off. The bendy outsole flexes with every move.",
      price: 220,
      color: Colors.black,
      brand: "Adidas",
      imgPath: "S1.png",
      idealfor: "Men",
    ),
    ShoeModel(
      name: "Adidas Yeezy",
      desc:
          "The YEEZY BOOST 350 V2 TRIPLE WHITE features a Primeknit upper, full length boost and heel tab. A rubble outsole and TPU sidewalls create a striking effect while providing superior traction. The midsole utilizes ADIDAS innovative BOOST technology to create a durable, shock- resistant and responsive sole.",
      price: 280,
      color: Colors.grey,
      brand: "Adidas",
      imgPath: "S2.png",
      idealfor: "Men",
    ),
    ShoeModel(
      name: "Converse",
      desc:
          "The Converse Chuck Taylor All Star High 'Pony Hair' incorporates premium detailing and a trendy print to the timeless sneaker. From the side, the all-black suede upper looks like a typical stealthy Chuck, but face the shoe head on, and you'll see the high-top is revamped with pony hair material adorned in a black-and-white fawn pattern from toe to tongue. A monochromatic black sole rounds out the lace-up's design.",
      price: 110,
      color: Colors.black,
      brand: "Converse",
      imgPath: "S3.png",
      idealfor: "Men & Women",
    ),
    ShoeModel(
      name: "Nike Air Force 1 - High",
      desc:
          "Elevate your game with the force of OG hoops. From leather that's smoother than backboard glass to the aggressive stance that says 'bring it on', it's everything you know best: crisp overlays, bold accents and the perfect amount of flash to make you shine. Its padded, mid-cut collar with the classic strap closure offers heritage styling and added support. Perforations keep you cool as you heat up the streets. It never left, but the Nike Air Force 1 Mid '07 is back.",
      price: 160,
      color: Colors.grey,
      brand: "Nike",
      imgPath: "S4.png",
      idealfor: "Men & Women",
    ),
    ShoeModel(
      name: "Nike Air Jordan Retro 1 - High",
      desc:
          "Air Jordan 1 Retro High OG Men's Shoe OLD-SCHOOL LOOK, LEGENDARY PERFORMANCE. Air Jordan 1 Retro High OG Men's Shoe combines a genuine and synthetic leather. Genuine and synthetic leather upper for durability and a premium look. Encapsulated heel Air-Sole unit provides lightweight cushioning.",
      price: 160,
      color: Bgcolor.redColor,
      brand: "Nike",
      imgPath: "S5.png",
      idealfor: "Men & Women",
    ),
    ShoeModel(
      name: "Nike Air Jordan Retro 1 - High",
      desc:
          "Air Jordan 1 Retro High OG Men's Shoe OLD-SCHOOL LOOK, LEGENDARY PERFORMANCE. Air Jordan 1 Retro High OG Men's Shoe combines a genuine and synthetic leather. Genuine and synthetic leather upper for durability and a premium look. Encapsulated heel Air-Sole unit provides lightweight cushioning.",
      price: 160,
      color: Bgcolor.brownyellowColor,
      brand: "Nike",
      imgPath: "S6.png",
      idealfor: "Men & Women",
    ),
    ShoeModel(
      name: "Nike Air Jordan Retro 1 - DIOR EDITION",
      desc:
          "For the Men’s Fall 2020 Runway show in Miami, Dior and Kim Jones partnered with Jordan Brand to unveil the limited-edition Air Jordan 1 High OG Dior sneaker. A collection of ready-to-wear and accessories completes the collaboration, and a low version of the Air Jordan 1 OG Dior rounds out the range.",
      price: 190,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "S7.png",
      idealfor: "Men",
    ),
    ShoeModel(
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
