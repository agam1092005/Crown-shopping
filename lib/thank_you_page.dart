import 'package:crown_shopping/settings/my_orders.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

import 'Others/Constants.dart';
import 'Others/rounded_button.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {

  var randomNumber = randomNumeric(10);
  var randomstring = randomAlpha(3).toUpperCase();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            Container(
              height: 100,
              child: Image(
                image: AssetImage(
                  'images/crown.png',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Thank You for purchasing order from Crown Shopping',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'PollerOne'),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Order number : CR$randomstring$randomNumber',
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your will be shipped in next 2-3 working days.',
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You can track your order from Setting > MY ORDERS.',
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'VIEW MY ORDERS', style: AlertTextStyle,
              height: 60,
              width: 40,
              onPressed: () {
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
                      return MyOrders();
                    },
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