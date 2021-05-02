import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.fact_check_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.home_work_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.payment,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.done_outline_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Thank You for placing an order from Crown Shopping',
              style: TextStyle(
                  fontSize: 22,
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
              'Your Order will be shipped in next 2-3 working days.',
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
