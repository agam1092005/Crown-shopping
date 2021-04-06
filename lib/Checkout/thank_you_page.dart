import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/settings/my_orders.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {

  // ignore: non_constant_identifier_names
  String OrderNumber;
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
               OrderNumber =
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
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () async {
                SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString('OrderNumber', OrderNumber);
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
