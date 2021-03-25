import 'dart:async';

import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/Wallet/WalletShimmer.dart';
import 'package:crown_shopping/login_screen.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoogleProfilePage extends StatefulWidget {
  @override
  _GoogleProfilePageState createState() => _GoogleProfilePageState();
}

class _GoogleProfilePageState extends State<GoogleProfilePage> {
  // ignore: non_constant_identifier_names
  String Gname = '';
  // ignore: non_constant_identifier_names
  String Gmail = '';
  // ignore: non_constant_identifier_names
  dynamic Gimage = '';

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  FlutterLocalNotificationsPlugin localNotification;

  @override
  void initState() {
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('crown');
    var initializeSettings =
        new InitializationSettings(android: androidInitialize);
    localNotification = new FlutterLocalNotificationsPlugin();
    localNotification.initialize(initializeSettings);
  }

  Future _showGooglesignoutnotification() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      '$Gname, signed out successfully',
      enableVibration: true,
      importance: Importance.high,
      playSound: true,
      channelShowBadge: true,
      priority: Priority.high,
      icon: 'crown',
    );
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails);
    await localNotification.show(0, 'Crown', '$Gname, signed out successfully',
        generalNotificationDetails);
  }

  getGData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Gname = prefs.getString('Gname');
      Gmail = prefs.getString('Gmail');
      Gimage = prefs.getString('Gimage');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getGData();
    });

    return Builder(
      builder: (context) => Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: <Widget>[
            Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('$Gimage'),
                backgroundColor: Colors.black54,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                '$Gname',
                style: TaglineTextStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '$Gmail',
                style: TaglineTextStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In Method -',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GOOGLE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'CROWN WALLET',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () {
                Navigator.push(
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
                      return WalletLoading();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              title: 'SETTINGS',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () {
                Navigator.push(
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
                      return SettingsPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey,
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'SIGN OUT',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () async {
                await _googleSignIn.disconnect();
                Navigator.pushAndRemoveUntil(
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
                        return LoginScreen();
                      },
                    ),
                    (route) => false);
                _showGooglesignoutnotification();
              },
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
