import 'package:crown_shopping/ID/sign_in_screen.dart';
import 'package:crown_shopping/ID/sign_up_screen.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraShoppingCart extends StatefulWidget {
  @override
  _ExtraShoppingCartState createState() => _ExtraShoppingCartState();
}

class _ExtraShoppingCartState extends State<ExtraShoppingCart> {

  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Bgcolor.deepred,
                  ),
                ),
                Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        'SHOPPING CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        100,
                      ),
                    ),
                    color: Bgcolor.darkdeepred,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
        );
  }
}

