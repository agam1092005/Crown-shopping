import 'file:///D:/PROJECTS/Flutter/crown_shopping/lib/Category%20Pages/Extra_category_page.dart';
import 'package:crown_shopping/ID/sign_in_screen.dart';
import 'package:crown_shopping/ID/sign_up_screen.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Profile%20Page/Extra_Profile_Page.dart';
import 'package:crown_shopping/Shopping%20Cart/Extra_cart.dart';
import 'package:crown_shopping/home/Extra_Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../OTHERS/bgcolor.dart';

class ExtraHomePage extends StatefulWidget {
  static const String id = 'Extra_Home_Page';

  @override
  _ExtraHomePageState createState() => _ExtraHomePageState();
}

class _ExtraHomePageState extends State<ExtraHomePage> {

  int _extraselectedIndex = 0;

  List<Widget> _extrapages = <Widget>[
    ExtraHome(),
    ExtraCategoryPage(),
    ExtraShoppingCart(),
    ExtraProfilePage(),
  ];

  void _onExtraItemTap(int index) {
    setState(() {
      _extraselectedIndex = index;
    });
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hey, You are not logged In.....',
                  style: TaglineTextStyle,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector( onTap: () {
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
                        return SignInScreen();
                      },
                    ),
                  );
                },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Log In',
                        style: AlertTextStyle,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Bgcolor.deepred,
                    ),
                    height: 80,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector( onTap: () {
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
                        return SignUpScreen();
                      },
                    ),
                  );
                },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Register',
                        style: AlertTextStyle,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Bgcolor.deepred,
                    ),
                    height: 80,
                  ),
                ),
              ),
              SizedBox(height: 100),
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
          index: _extraselectedIndex,
          children: _extrapages,
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
              onTap: _onExtraItemTap,
              currentIndex: _extraselectedIndex,
              showSelectedLabels: true,
              selectedLabelStyle: TextStyle(fontSize: 12, fontFamily: 'Bungee', letterSpacing: 2),
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
                  icon: Icon(Icons.shopping_cart_outlined),
                  // ignore: deprecated_member_use
                  title: Text('Cart'),
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

