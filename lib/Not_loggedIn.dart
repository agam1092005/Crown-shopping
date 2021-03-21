import 'package:crown_shopping/ID/sign_up_screen.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';
import 'Others/Constants.dart';
import 'package:crown_shopping/ID/sign_in_screen.dart';
import 'ID/sign_in_screen.dart';

class NotloggedIn extends StatefulWidget {
  @override
  _NotloggedInState createState() => _NotloggedInState();
}

class _NotloggedInState extends State<NotloggedIn> {
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
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Hey, You are not logged In.....',
                  style: TaglineTextStyle,
                ),
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
          ],
        ),
          ),
    );
  }
}
