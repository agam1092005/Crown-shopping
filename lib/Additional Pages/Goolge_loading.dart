import 'package:crown_shopping/home/Google_Home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class GoogleLoadingScreen extends StatefulWidget {
  @override
  _GoogleLoadingScreenState createState() => _GoogleLoadingScreenState();
}

class _GoogleLoadingScreenState extends State<GoogleLoadingScreen> with TickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () =>   Navigator.pushReplacement(
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
            return GoogleHomePage();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              'Logging In through Google',
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
