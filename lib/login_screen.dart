import 'dart:async';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Additional Pages/Goolge_loading.dart';
import 'ID/sign_in_screen.dart';
import 'ID/sign_up_screen.dart';
import 'package:flutter/animation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  FlutterLocalNotificationsPlugin localNotification;
  Image imageFromPreferences;
  // ignore: non_constant_identifier_names
  String Gname;
  // ignore: non_constant_identifier_names
  String Gimage;
  // ignore: non_constant_identifier_names
  String Gmail;

  initState() {
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('crown');
    var initializeSettings =
        new InitializationSettings(android: androidInitialize);
    localNotification = new FlutterLocalNotificationsPlugin();
    localNotification.initialize(initializeSettings);
    controller = AnimationController(
        duration: const Duration(microseconds: 400000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  Future _shownotificationGOOGLE() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      '$Gname, successfully Logged In  through Google',
      enableVibration: true,
      importance: Importance.high,
      playSound: true,
      channelShowBadge: true,
      priority: Priority.high,
      icon: 'crown',
    );
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails);
    await localNotification.show(
        0,
        'Crown',
        '$Gname, successfully Logged In through Google',
        generalNotificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.grey.shade400,
                Colors.grey.shade600,
                Colors.grey.shade700,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        'images/crown.png',
                      ),
                    ),
                  ),
                ),
                height: 250,
              ),
              Flexible(
                child: SizedBox(
                  height: 1000,
                ),
              ),
              Column(
                children: [
                  RoundedButton(
                    title: 'Log In',
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
                            return SignInScreen();
                          },
                        ),
                      );
                    },
                  ),
                  RoundedButton(
                    title: 'Register',
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
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Container(
                    child: Text(
                      '-OR-',
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Continue with',
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.06,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await _Glogin();
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setString('Gname', Gname);
                      prefs.setString('Gimage', Gimage);
                      prefs.setString('Gmail', Gmail);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/google.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'GOOGLE',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 28,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> _Glogin() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    final FirebaseAuth _auth = FirebaseAuth.instance;

    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final User user = (await _auth.signInWithCredential(credential)).user;
    Gname = user.displayName;
    Gmail = user.email;
    Gimage = user.photoURL;
    _shownotificationGOOGLE();
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionsBuilder: (context, animation, animationTime, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        pageBuilder: (context, animation, animationTime) {
          return GoogleLoadingScreen();
        },
      ),
    );
    return;
  }
}
