import 'package:crown_shopping/Checkout/Order_information_Page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CheckoutLoading1 extends StatefulWidget {
  @override
  _CheckoutLoading1State createState() => _CheckoutLoading1State();
}

class _CheckoutLoading1State extends State<CheckoutLoading1> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionsBuilder: (context, animation, animationTime, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (context, animation, animationTime) {
            return OrderInformationPage();
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
