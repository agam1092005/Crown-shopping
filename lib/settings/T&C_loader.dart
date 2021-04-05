import 'package:crown_shopping/settings/terms_&_conditions.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class TermsConditionLoading extends StatefulWidget {
  @override
  _TermsConditionLoadingState createState() => _TermsConditionLoadingState();
}

class _TermsConditionLoadingState extends State<TermsConditionLoading> {
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
            return TermsConditions();
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
