import 'package:crown_shopping/Ads/oneplus_ad.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OneplusLoading extends StatefulWidget {
  @override
  _OneplusLoadingState createState() => _OneplusLoadingState();
}

class _OneplusLoadingState extends State<OneplusLoading> {
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
            return OneplusAd();
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
              'Loading...',
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
