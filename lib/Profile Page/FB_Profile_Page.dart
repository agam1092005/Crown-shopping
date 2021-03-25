import 'dart:async';

import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/Wallet/WalletShimmer.dart';
import 'package:crown_shopping/login_screen.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FBProfilePage extends StatefulWidget {
  @override
  _FBProfilePageState createState() => _FBProfilePageState();
}

class _FBProfilePageState extends State<FBProfilePage> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();
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

  Future _showFBsignoutnotification() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      '$fbname, signed out successfully',
      enableVibration: true,
      importance: Importance.high,
      playSound: true,
      channelShowBadge: true,
      priority: Priority.high,
      icon: 'crown',
    );
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails);
    await localNotification.show(0, 'Crown', '$fbname, signed out successfully',
        generalNotificationDetails);
  }

  // ignore: non_constant_identifier_names
  String fbname = '';
  dynamic fbimage = '';

  getFBData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      fbname = prefs.getString('fbname');
      fbimage = prefs.getString('fbimage');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getFBData();
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
                backgroundColor: Colors.black54,
                radius: 100,
                backgroundImage: NetworkImage('$fbimage'),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                '$fbname',
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
                  'FACEBOOK',
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
                await facebookSignIn.logOut();
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
                _showFBsignoutnotification();
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
