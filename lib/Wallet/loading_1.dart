import 'dart:async';
import 'package:crown_shopping/Wallet/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading1 extends StatefulWidget {
  @override
  _Loading1State createState() => _Loading1State();
}

class _Loading1State extends State<Loading1> {
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
            return QrCode();
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
              'loading your unique QR Code...',
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
