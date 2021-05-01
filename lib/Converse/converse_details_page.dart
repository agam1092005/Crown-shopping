import 'package:crown_shopping/Checkout/checkout_loading1.dart';
import 'package:crown_shopping/Others/app_clipper.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'converse_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math' as math;

class ConverseDetailPage extends StatefulWidget {
  final ConverseModel converseModel;
  ConverseDetailPage(this.converseModel);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<ConverseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.converseModel.color,
        appBar: AppBar(
          backgroundColor: widget.converseModel.color,
          elevation: 0,
          title: Text(
            "CONVERSE",
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * .80,
                  width: MediaQuery.of(context).size.width,
                  child: ClipPath(
                    clipper: AppClipper(
                      cornerSize: 50,
                      diagonalHeight: 180,
                      roundedBottom: false,
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 180, left: 16, right: 16),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            width: 300,
                            child: Text(
                              "${widget.converseModel.name}",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          _buildRating(),
                          SizedBox(height: 24),
                          Text(
                            "DETAILS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "${widget.converseModel.desc}",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "IDEAL FOR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "${widget.converseModel.idealfor}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: _buildBottom(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Hero(
                  tag: "hero${widget.converseModel.imgPath}",
                  child: Transform.rotate(
                    angle: -math.pi / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100, left: 40),
                      child: Image(
                        width: MediaQuery.of(context).size.width * .90,
                        height: MediaQuery.of(context).size.height * .30,
                        image: AssetImage("images/${widget.converseModel.imgPath}"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "PRICE",
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              Text(
                "\$${widget.converseModel.price.toInt()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('productname', widget.converseModel.name);
              prefs.setString('productimage', widget.converseModel.imgPath.toString());
              prefs.setDouble('productprice', widget.converseModel.price);
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return CheckoutLoading1();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 50,
              ),
              decoration: BoxDecoration(
                color: Bgcolor.deepred,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Text(
                "CHECKOUT",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: <Widget>[
        RatingBar.builder(
          initialRating: 3.5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(width: 16),
        Text(
          "192 Reviews",
          style: TextStyle(
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}
