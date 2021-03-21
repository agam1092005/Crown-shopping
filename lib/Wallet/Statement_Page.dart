import 'package:crown_shopping/BrandPage.dart';
import 'package:crown_shopping/Dresses/dress_listview_page.dart';
import 'package:crown_shopping/Hats/hat_listview_page.dart';
import 'package:crown_shopping/Men/mens_listview_page.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Senakers/shoe_listview_page.dart';
import 'package:crown_shopping/Women/womens_listview_page.dart';
import 'package:crown_shopping/jackets/jackets_listview_page.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:flutter/material.dart';

class Statement extends StatefulWidget {
  @override
  _StatementState createState() => _StatementState();
}

class _StatementState extends State<Statement> {
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 10),
              Text(
                'Statement',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              Text(
                'Transactions Made',
                style: TextStyle(color: Colors.black45, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                height: 2,
                color: Colors.black45,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Money Added',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    '+10 \$',
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                ],
              ),
              Text(
                'For Registration',
                style: TextStyle(color: Colors.black45, fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
