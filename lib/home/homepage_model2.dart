import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class HomeModel2 {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final imgPath;
  final String idealfor;

  HomeModel2({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
    this.idealfor,
  });

  static List<HomeModel2> list = [
    HomeModel2(
      name: "Black Jean Shearling",
      desc:
      "Distinctly individualistic ! This craftsmanship is unique in its style with a shirt collar and a front zipper opening along with zippered cuffs gives you an edge over other jackets. The greyish tint of this shearling fur collar is soft to touch and no wonder the best contrast for the black. Get ready to face the upcoming winters with this shearling jacket on.",
      price: 125,
      brand: "H&M",
      color: Colors.black,
      imgPath: "J1.png",
      idealfor: "Men",
    ),
    HomeModel2(
      name: "Blue Denim Jacket",
      desc:
      "Layer up in style with this impeccably faded denim jacket from Flying Machine. The breathable fabric construction allows all-day comfort wherever you go. Wear yours with a graphic tee and ripped boyfriend jeans.",
      price: 90,
      brand: "Flying Machine",
      color: Bgcolor.navyblue,
      imgPath: "J2.png",
      idealfor: "Men & Women",
    ),
  ];
}
