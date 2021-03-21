import 'package:crown_shopping/settings/chatloading2.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatLoading1 extends StatefulWidget {
  @override
  _ChatLoading1State createState() => _ChatLoading1State();
}

class _ChatLoading1State extends State<ChatLoading1> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
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
            return ChatLoading2();
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
              'Wait, Finding an Expert...',
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
