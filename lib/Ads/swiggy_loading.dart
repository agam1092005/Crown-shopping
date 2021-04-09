import 'package:crown_shopping/Ads/swiggy_ad.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SwiggyLoading extends StatefulWidget {
  @override
  _SwiggyLoadingState createState() => _SwiggyLoadingState();
}

class _SwiggyLoadingState extends State<SwiggyLoading> {
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
            return SwiggyAd();
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.maxFinite,
                child: ListTile(
                  leading: Icon(
                    Icons.info_outline_rounded,
                    size: 25,
                    color: Colors.yellow,
                  ),
                  title: Text(
                    "Loading...",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Inconsolata'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
