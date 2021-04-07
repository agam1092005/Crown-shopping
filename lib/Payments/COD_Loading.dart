import 'package:crown_shopping/Checkout/thank_you_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CODloading extends StatefulWidget {
  @override
  _CODloadingState createState() => _CODloadingState();
}

class _CODloadingState extends State<CODloading> {
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
            return ThankYouPage();
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
