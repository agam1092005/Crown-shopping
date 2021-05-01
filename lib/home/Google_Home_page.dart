import 'package:crown_shopping/BrandPage.dart';
import 'package:crown_shopping/Category%20Pages/category_page.dart';
import 'package:crown_shopping/Dresses/dress_listview_page.dart';
import 'package:crown_shopping/Hats/hat_listview_page.dart';
import 'package:crown_shopping/Men/mens_listview_page.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Profile%20Page/google_Profile_page.dart';
import 'package:crown_shopping/Senakers/shoe_listview_page.dart';
import 'package:crown_shopping/Women/womens_listview_page.dart';
import 'package:crown_shopping/jackets/jackets_listview_page.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../OTHERS/bgcolor.dart';
import 'Home.dart';

class GoogleHomePage extends StatefulWidget {
  static const String id = 'Google_Home_Page';

  @override
  _GoogleHomePageState createState() => _GoogleHomePageState();
}

class _GoogleHomePageState extends State<GoogleHomePage> with TickerProviderStateMixin {
  List<Widget> _pages = [
    Home(),
    CategoryPage(),
    GoogleProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(
          () {
        _selectedIndex = index;
      },
    );
  }

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
        body: IndexedStack(
          children: _pages,
          index: _selectedIndex,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 3,
                  blurRadius: 6,
                )
              ],
            ),
            child: BottomNavigationBar(
              onTap: _onItemTap,
              currentIndex: _selectedIndex,
              showSelectedLabels: true,
              selectedLabelStyle: TextStyle(
                  fontSize: 12, fontFamily: 'Bungee', letterSpacing: 2),
              showUnselectedLabels: false,
              elevation: 4,
              iconSize: 30,
              selectedItemColor: Bgcolor.deepred,
              unselectedItemColor: Colors.black38,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  // ignore: deprecated_member_use
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category_sharp),
                  // ignore: deprecated_member_use
                  title: Text('Category'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp),
                  // ignore: deprecated_member_use
                  title: Text('Profile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
