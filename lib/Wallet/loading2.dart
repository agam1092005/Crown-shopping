import 'dart:async';
import 'package:crown_shopping/Wallet/add_money.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading2 extends StatefulWidget {
  @override
  _Loading2State createState() => _Loading2State();
}

class _Loading2State extends State<Loading2> {
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
            return AddMoney();
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
              child: SpinKitWave(
                size: 60,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'waiting for response from server...',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
