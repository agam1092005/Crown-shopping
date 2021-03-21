import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';

class OtherModel {
  final String name;
  final double price;
  final String desc;
  final String brand;
  final Color color;
  final imgPath;
  final String idealfor;

  OtherModel({
    this.name,
    this.brand,
    this.price,
    this.desc,
    this.color,
    this.imgPath,
    this.idealfor,
  });

  static List<OtherModel> list = [
    OtherModel(
      name: "Floral Blouse",
      desc:
          "Steal all the stares this summer season in this dreamy top. Featuring all over print and a pom-pom lace hemline.",
      price: 20,
      brand: "",
      color: Bgcolor.cream,
      imgPath: "W2.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "Red Dots Dress",
      desc:
          "This red polka dot printed dress by Sheen Studio is crafted in cotton and features a V-neck, long sleeves with buttoned cuffs, potli buttons detail on the waist belt, soft gathers on the waistline, side slit pockets and a regular fit. Buy this dress online and style it with a pair of tan flats and pint-sized gold hoops to make a statement.",
      price: 80,
      brand: "Sheen Studio",
      color: Bgcolor.redColor,
      imgPath: "W4.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "Yellow Track Suit",
      desc:
          "Yogue Activewear brings you stylish tracksuits to keep you warm and active in the cold season. Super comfortable for walking running workout or gym.",
      price: 135,
      brand: "Yogue Activewear",
      color: Bgcolor.mustard,
      imgPath: "W6.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "White Blouse",
      desc:
          "Tailored in classic white, this strappy top is a summer ready piece. Easy-to-style and versatile, it features a strappy neck and a peplum cut.",
      price: 20,
      brand: "",
      color: Bgcolor.cream,
      imgPath: "W7.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "Jean Long Sleeve",
      desc:
      "Blue woven denim casual shirt with a washed effect, has a spread collar, a full button placket, a patch pocket, long sleeves, a curved hemline",
      price: 40,
      brand: "HIGHLANDER",
      color: Bgcolor.navyblue,
      imgPath: "M5.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Black & White Longsleeve",
      desc: "Black and white printed T-shirt, has a round neck, long sleeves",
      price: 25,
      brand: "",
      color: Colors.grey,
      imgPath: "M3.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Brown Brim",
      desc:
          "No matter which direction the compass points, this straw addition to the Seeker Collection will get you there in style. The Four Points is constructed by hand in Garland, Texas with firm-finish Panama straw and features a pinch-front crown and Dri-Lex sweatband.",
      price: 25,
      brand: "Four Points",
      color: Bgcolor.verydarkbrown,
      imgPath: "H1.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Blue Beanie",
      desc:
          "The Merino Wool Ribbed Knit Beanie features a sewn down hem and pullover design.",
      price: 18,
      brand: "Merino",
      color: Bgcolor.navyblue,
      imgPath: "H2.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "Brown Cowboy",
      desc:
          "One of the finest hats in our collection, the El Presidente is made from premium 100X fur felt. A shining example of the legendary craftsmanship, Stetson is known for, this incredibly high-quality piece features classic cattleman hat styling, with a tall crown and 4” wide brim.",
      price: 35,
      brand: "El Presidente",
      color: Bgcolor.darkbrown,
      imgPath: "H3.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Grey Brim",
      desc:
          "A perfect value addition to your wardrobe, this cap offers you maximum comfort. It features an adjustable closure that ensures a snug fit while wearing it. Designed using the best quality fabric, it is extremely durable and can be also worn to protect you from the harsh sun rays when you are travelling.",
      price: 25,
      brand: "",
      color: Bgcolor.darkgrey,
      imgPath: "H4.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Green Beanie",
      desc:
          "This classic hat has been revisited by our stylists to give it a fresh look. However, it remains classic and timeless to please everyone!",
      price: 18,
      brand: "",
      color: Bgcolor.darkgreen,
      imgPath: "H5.png",
      idealfor: "Men & Women",
    ),
    OtherModel(
      name: "Palm Tree Cap",
      desc:
          "The 90s style baseball cap can fit perfectly in every fashion scene. Palm Tree brings you this super-cute summer cap that goes perfectly well with your vibe. This beige piece is practical and suitable for any season and comes with a back velcro closure. Very structured design, this piece can bring a cooler vibe to any outfit.",
      price: 14,
      brand: "Palm Tree",
      color: Bgcolor.lightblue,
      imgPath: "H6.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Red Beanie",
      desc:
          "A timeless style icon is a term bandied about a little too often these days. This double-layer knit beanie will surely update you with the changing fashion trends. It is crafted from 100 percent acrylic. It has a fold-up brim that allows you to customize the wear. The pull-on beanie construction, double-layered knit, webbing tape provides great comfort.",
      price: 18,
      brand: "",
      color: Bgcolor.red,
      imgPath: "H7.png",
      idealfor: "Women",
    ),
    OtherModel(
      name: "Wolf Cap",
      desc:
          "Cap made for both Men & Women - Baseball Cap Protection cotton, knit denim hat embroidered Vintage fashion Casual Classic look for Surfers Skaters Outdoors Beach Hats Fishing Summer winter Party Wedding",
      price: 14,
      brand: "",
      color: Bgcolor.tealblue,
      imgPath: "H8.png",
      idealfor: "Men",
    ),
    OtherModel(
      name: "Blue Snapback",
      desc:
          "If you are fed up with throwing on the same old snapback cap every day, try this super cool and quirky baseball cap from Lazy Panda. Crafted with high-quality cotton fabric, this piece comes with back velcro closure. Very structured design, this piece can bring a cooler vibe to any outfit.",
      price: 16,
      brand: "",
      color: Bgcolor.differentblue,
      imgPath: "H9.png",
      idealfor: "Men & Women",
    ),
  ];
}
