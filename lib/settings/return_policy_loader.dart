import 'package:crown_shopping/settings/return_policy.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ReturnPolicyLoading extends StatefulWidget {
  @override
  _ReturnPolicyLoadingState createState() => _ReturnPolicyLoadingState();
}

class _ReturnPolicyLoadingState extends State<ReturnPolicyLoading> {
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
            return ReturnPolicy();
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
