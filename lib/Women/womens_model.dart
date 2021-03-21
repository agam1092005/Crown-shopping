import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class WomenModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  WomenModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<WomenModel> list = [
    WomenModel(
      name: "Blue Tanktop",
      desc:
      "A front runner in western fashion, at ONLY you are bound to find some of the trendiest western dresses, tops for girls and various other statement pieces. Following our philosophy of uniqueness and embracing your inner strengths, only online shopping will empower your wardrobe.",
      price: 25,
      brand: "ONLY",
      color: Colors.teal,
      imgPath: "W1.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "Floral Blouse",
      desc:
      "Steal all the stares this summer season in this dreamy top. Featuring all over print and a pom-pom lace hemline.",
      price: 20,
      brand: "",
      color: Bgcolor.cream,
      imgPath: "W2.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "Floral Dress",
      desc:
      "Studio Collection. Ankle-length dress in a patterned weave with a deep V-neck and wide pleats at the front creating texture and soft draping. Defined, padded shoulders and long, overdimensioned sleeves with double-buttoned cuffs. Seam at the waist and a wide skirt. Unlined. The polyester content of the dress is partly recycled. Studio Collection AW20 is a tribute to the rebellious, fearless individual who dares to break the mould ‒ an individual who plays between the extremes and finds their style amongst the androgynous, eclectic and creative.",
      price: 80,
      brand: "H&M",
      color: Bgcolor.cream,
      imgPath: "W3.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "Red Dots Dress",
      desc:
      "This red polka dot printed dress by Sheen Studio is crafted in cotton and features a V-neck, long sleeves with buttoned cuffs, potli buttons detail on the waist belt, soft gathers on the waistline, side slit pockets and a regular fit. Buy this dress online and style it with a pair of tan flats and pint-sized gold hoops to make a statement.",
      price: 80,
      brand: "Sheen Studio",
      color: Bgcolor.redColor,
      imgPath: "W4.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "Striped Sweater",
      desc:
      "Flaunt your style with this Striped sweater from Forever 21. Tailored in regular fit, this acrylic sweater is light in weight and will keep you at ease all day long. Featuring a crew neck, full sleeves and striped pattern, this sweater holds a superlative attractiveness. Team this sweater with a pair of denims and sandals to look effortlessly stylish.",
      price: 45,
      brand: "Forever 21",
      color: Bgcolor.brown,
      imgPath: "W5.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "Yellow Track Suit",
      desc:
      "Yogue Activewear brings you stylish tracksuits to keep you warm and active in the cold season. Super comfortable for walking running workout or gym.",
      price: 135,
      brand: "Yogue Activewear",
      color: Bgcolor.mustard,
      imgPath: "W6.png",
      idealfor: "Women",
    ),
    WomenModel(
      name: "White Blouse",
      desc:
      "Tailored in classic white, this strappy top is a summer ready piece. Easy-to-style and versatile, it features a strappy neck and a peplum cut.",
      price: 20,
      brand: "",
      color: Bgcolor.cream,
      imgPath: "W7.png",
      idealfor: "Women",
    ),
  ];
}
