import 'package:crown_shopping/BrandPage.dart';
import 'package:crown_shopping/Dresses/dress_listview_page.dart';
import 'package:crown_shopping/Hats/hat_listview_page.dart';
import 'package:crown_shopping/Men/mens_listview_page.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Senakers/shoe_listview_page.dart';
import 'package:crown_shopping/Women/womens_listview_page.dart';
import 'package:crown_shopping/jackets/jackets_listview_page.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'adidas_details_page.dart';
import 'adidas_gridview_page.dart';
import 'adidas_model.dart';
import 'package:flutter/material.dart';

class AdidasListPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AdidasListPage> with TickerProviderStateMixin{

  List<AdidasModel> adidasList = AdidasModel.list;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Container(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: ImageIcon(
                AssetImage('images/crown.png'),
                size: 40,
                color: Colors.black54,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontWeight: FontWeight.w900),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                    'Sneakers',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                  child: Text(
                    'Hats',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                    'Jackets',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                          return DressListPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Dresses',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Shop by Gender',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                  child: Text(
                    'Men',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
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
                    'Women',
                    style: DrawerTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: GestureDetector(
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
                          return BrandPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Shop by Brand',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: GestureDetector(
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
                          return SettingsPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Settings & more',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Crown pvt. ltd since 2020',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "ADIDAS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Bgcolor.deepred,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
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
                                return AdidasGridPage();
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.grid_on,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "JUST FOR YOU",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ...adidasList.map(
              (data) {
                return GestureDetector(
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
                          return AdidasDetailPage(data);
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage("images/${data.imgPath}"),
                          width: 100,
                          height: 60,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * .4,
                                child: Text(
                                  "${data.name}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "${data.brand}",
                                style: TextStyle(
                                  color: Colors.black26,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "\$${data.price.toInt()}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
