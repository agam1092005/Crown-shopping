import 'package:crown_shopping/Ads/beats_ad.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BeatsLoading extends StatefulWidget {
  @override
  _BeatsLoadingState createState() => _BeatsLoadingState();
}

class _BeatsLoadingState extends State<BeatsLoading> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
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
            return BeatsAd();
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
