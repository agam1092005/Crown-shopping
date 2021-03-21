import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class HandMModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  HandMModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<HandMModel> list = [
    HandMModel(
      name: "Brown Shearling",
      desc:
      "This brown color in genuine shearling jackets stands for exceptionalism and manly look in every nook and corner of this jacket derived from the healthy animal skin to match Your style and the fur lining is pure in its nature to display warmth n coziness. The Front zip along with side slash pockets are a bonus for the wearer, while the sleeves having fur edges and leather straps around, smartly fit in.",
      price: 165,
      brand: "H&M",
      color: Bgcolor.darkbrown,
      imgPath: "J4.png",
      idealfor: "Men",
    ),
    HandMModel(
      name: "Black Jean Shearling",
      desc:
      "Distinctly individualistic ! This craftsmanship is unique in its style with a shirt collar and a front zipper opening along with zippered cuffs gives you an edge over other jackets. The greyish tint of this shearling fur collar is soft to touch and no wonder the best contrast for the black. Get ready to face the upcoming winters with this shearling jacket on.",
      price: 125,
      brand: "H&M",
      color: Colors.black,
      imgPath: "J1.png",
      idealfor: "Men",
    ),
    HandMModel(
      name: "Floral Dress",
      desc:
      "Studio Collection. Ankle-length dress in a patterned weave with a deep V-neck and wide pleats at the front creating texture and soft draping. Defined, padded shoulders and long, overdimensioned sleeves with double-buttoned cuffs. Seam at the waist and a wide skirt. Unlined. The polyester content of the dress is partly recycled. Studio Collection AW20 is a tribute to the rebellious, fearless individual who dares to break the mould ‒ an individual who plays between the extremes and finds their style amongst the androgynous, eclectic and creative.",
      price: 80,
      brand: "H&M",
      color: Bgcolor.cream,
      imgPath: "W3.png",
      idealfor: "Women",
    ),
  ];
}
