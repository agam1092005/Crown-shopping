import 'package:crown_shopping/home/Extra_Home_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class ExtraLoadingScreen extends StatefulWidget {
  @override
  _ExtraLoadingScreenState createState() => _ExtraLoadingScreenState();
}

class _ExtraLoadingScreenState extends State<ExtraLoadingScreen> with TickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () =>  Navigator.pushReplacement(
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
            return ExtraHomePage();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
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
                'Tip : Register and get 10 \$ in your Wallet for FREE !',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
