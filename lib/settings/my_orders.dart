import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  // ignore: non_constant_identifier_names
  String randomNumber;
  String randomstring;
  // ignore: non_constant_identifier_names
  String OrderNumber = '';

  getOrderNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      OrderNumber = prefs.getString('OrderNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getOrderNumber();
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'MY ORDERS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      '$OrderNumber',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
