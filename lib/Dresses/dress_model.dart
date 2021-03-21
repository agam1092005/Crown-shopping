import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class DressModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  DressModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<DressModel> list = [
    DressModel(
      name: "Floral Dress",
      desc:
          "Studio Collection. Ankle-length dress in a patterned weave with a deep V-neck and wide pleats at the front creating texture and soft draping. Defined, padded shoulders and long, overdimensioned sleeves with double-buttoned cuffs. Seam at the waist and a wide skirt. Unlined. The polyester content of the dress is partly recycled. Studio Collection AW20 is a tribute to the rebellious, fearless individual who dares to break the mould ‒ an individual who plays between the extremes and finds their style amongst the androgynous, eclectic and creative.",
      price: 80,
      brand: "H&M",
      color: Bgcolor.cream,
      imgPath: "W3.png",
      idealfor: "Women",
    ),
    DressModel(
      name: "Red Dots Dress",
      desc:
          "This red polka dot printed dress by Sheen Studio is crafted in cotton and features a V-neck, long sleeves with buttoned cuffs, potli buttons detail on the waist belt, soft gathers on the waistline, side slit pockets and a regular fit. Buy this dress online and style it with a pair of tan flats and pint-sized gold hoops to make a statement.",
      price: 80,
      brand: "Sheen Studio",
      color: Bgcolor.redColor,
      imgPath: "W4.png",
      idealfor: "Women",
    ),
  ];
}
