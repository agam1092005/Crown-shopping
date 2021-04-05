import 'package:crown_shopping/settings/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class PrivacyPolicyLoading extends StatefulWidget {
  @override
  _PrivacyPolicyLoadingState createState() => _PrivacyPolicyLoadingState();
}

class _PrivacyPolicyLoadingState extends State<PrivacyPolicyLoading> {
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
            return PrivacyPolicy();
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
