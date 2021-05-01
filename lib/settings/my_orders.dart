import 'package:crown_shopping/settings/previous_order_details.dart';
import 'package:flutter/cupertino.dart';
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

  // ignore: non_constant_identifier_names
  OrderDetector() {
    if (OrderNumber == null) {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(
                    'images/crown.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'NO ORDERS FOUND ! GO SHOP THE LATEST TRENDS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      );
    } else
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
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
                    return PreviousOrder();
                  },
                ),
              );
            },
            child: Container(
              height: 80,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
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
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              strokeWidth: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Trying to fetch more orders...',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      );
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
              height: 10,
            ),
            Text(
              'Previously ordered items',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OrderDetector(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
