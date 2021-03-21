import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class JacketModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  JacketModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<JacketModel> list = [
    JacketModel(
      name: "Black Jean Shearling",
      desc:
      "Distinctly individualistic ! This craftsmanship is unique in its style with a shirt collar and a front zipper opening along with zippered cuffs gives you an edge over other jackets. The greyish tint of this shearling fur collar is soft to touch and no wonder the best contrast for the black. Get ready to face the upcoming winters with this shearling jacket on.",
      price: 125,
      brand: "H&M",
      color: Colors.black,
      imgPath: "J1.png",
      idealfor: "Men",
    ),
    JacketModel(
      name: "Blue Denim Jacket",
      desc:
      "Layer up in style with this impeccably faded denim jacket from Flying Machine. The breathable fabric construction allows all-day comfort wherever you go. Wear yours with a graphic tee and ripped boyfriend jeans.",
      price: 90,
      brand: "Flying Machine",
      color: Bgcolor.navyblue,
      imgPath: "J2.png",
      idealfor: "Men & Women",
    ),
    JacketModel(
      name: "Grey Denim Jacket",
      desc:
      "Spruce up your outerwear essentials with this denim jacket from Flying Machine. Woven from breathable cotton, it's cut in a waist-length silhouette and has long sleeves. Wear yours with a simple tee and high-waist jeans.",
      price: 90,
      brand: "Flying Machine",
      color: Colors.grey,
      imgPath: "J3.png",
      idealfor: "Men & Women",
    ),
    JacketModel(
      name: "Brown Shearling",
      desc:
      "This brown color in genuine shearling jackets stands for exceptionalism and manly look in every nook and corner of this jacket derived from the healthy animal skin to match Your style and the fur lining is pure in its nature to display warmth n coziness. The Front zip along with side slash pockets are a bonus for the wearer, while the sleeves having fur edges and leather straps around, smartly fit in.",
      price: 165,
      brand: "H&M",
      color: Bgcolor.darkbrown,
      imgPath: "J4.png",
      idealfor: "Men",
    ),
    JacketModel(
      name: "Tan Trench",
      desc:
      "The easy trench coat is an outerwear icon, ready to be styled with everything from jeans and trainers to floral midi dresses. The trench is perhaps the most versatile of all fashion coats and khaki, beige, navy and black are the most popular and versatile colours to try. Mix things up, and choose a design with statement details, and extra long or short proportions for a styling twist.",
      price: 185,
      brand: "ZARA WOMEN",
      color: Bgcolor.brown,
      imgPath: "J5.png",
      idealfor: "Women",
    ),
    JacketModel(
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
