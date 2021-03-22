import 'package:crown_shopping/Adidas/adidas_listview_page.dart';
import 'package:crown_shopping/HandM/HandM_listview_page.dart';
import 'package:crown_shopping/Hats/hat_listview_page.dart';
import 'package:crown_shopping/Men/mens_listview_page.dart';
import 'package:crown_shopping/Nike/nike_listview_page.dart';
import 'package:crown_shopping/Others/app_clipper.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Senakers/shoe_listview_page.dart';
import 'package:crown_shopping/Women/womens_listview_page.dart';
import 'package:crown_shopping/home/homepage_model.dart';
import 'package:crown_shopping/jackets/jackets_listview_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'homepage_model2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'homepage_model3.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    List<HomeModel> homeList = HomeModel.list;
    List<HomeModel2> home2List = HomeModel2.list;
    List<HomeModel3> home3List = HomeModel3.list;

    return ListView(
      children: [
        Container(
          height: 240,
          child: CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.decelerate,
                initialPage: 0,
                enableInfiniteScroll: true,
                height: MediaQuery.of(context).size.height,
                enlargeCenterPage: true),
            items: [
              GestureDetector(
                onTap: () {
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
                        return WomenListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg1.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return NikeListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg2.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return MenListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg3.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return AdidasListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg4.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return HatListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg5.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return HandMListPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg6.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular in Sneakers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return ShoeListPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'VIEW ALL',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Bgcolor.deepred,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 320,
          child: ListView.builder(
            itemCount: homeList.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Container(
                width: 250,
                margin: EdgeInsets.only(right: 16),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: _buildBackground(index, 230),
                    ),
                    Positioned(
                      bottom: 170,
                      right: 10,
                      child: Transform.rotate(
                        angle: -math.pi / 7,
                        child: Image(
                          width: 220,
                          image:  AssetImage('images/${homeList[index].imgPath}')
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular in Jackets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return JacketListPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'VIEW ALL',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Bgcolor.deepred,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 350,
          child: ListView.builder(
            itemCount: home2List.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Container(
                width: 250,
                margin: EdgeInsets.only(right: 16),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: _buildBackground2(index, 230),
                    ),
                    Positioned(
                      bottom: 140,
                      child: Image(
                        width: 220,
                        image:  AssetImage('images/${home2List[index].imgPath}')
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular in Women',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              GestureDetector(
                onTap: () {
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
                        return WomenListPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'VIEW ALL',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Bgcolor.deepred,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 320,
          child: ListView.builder(
            itemCount: homeList.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Container(
                width: 250,
                margin: EdgeInsets.only(right: 16),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: _buildBackground3(index, 230),
                    ),
                    Positioned(
                      bottom: 120,
                      height: 180,
                      child: Image(
                        width: 220,
                        image: AssetImage('images/${home3List[index].imgPath}'),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

Widget _buildBackground2(int index, double width) {
  List<HomeModel2> home2List = HomeModel2.list;

  return ClipPath(
    clipper: AppClipper(cornerSize: 25, diagonalHeight: 150),
    child: Container(
      color: home2List[index].color,
      width: width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: SizedBox()),
                Container(
                  width: 150,
                  child: Text(
                    "${home2List[index].name}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${home2List[index].price}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBackground3(int index, double width) {
  List<HomeModel3> home3List = HomeModel3.list;

  return ClipPath(
    clipper: AppClipper(cornerSize: 25, diagonalHeight: 150),
    child: Container(
      color: home3List[index].color,
      width: width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: SizedBox()),
                Container(
                  width: 150,
                  child: Text(
                    "${home3List[index].name}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${home3List[index].price}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBackground(int index, double width) {
  List<HomeModel> homeList = HomeModel.list;

  return ClipPath(
    clipper: AppClipper(cornerSize: 25, diagonalHeight: 150),
    child: Container(
      color: homeList[index].color,
      width: width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: SizedBox()),
                Container(
                  width: 150,
                  child: Text(
                    "${homeList[index].name}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${homeList[index].price}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
