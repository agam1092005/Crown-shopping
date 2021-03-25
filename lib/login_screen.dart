import 'dart:async';
import 'dart:convert';
import 'package:crown_shopping/Additional%20Pages/Extra%20loading_screen.dart';
import 'package:crown_shopping/Additional%20Pages/FB_loading.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Additional Pages/Goolge_loading.dart';
import 'ID/sign_in_screen.dart';
import 'ID/sign_up_screen.dart';
import 'package:flutter/animation.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  Animation<double> animation;
  FlutterLocalNotificationsPlugin localNotification;
  Image imageFromPreferences;
  String fbname;
  String fbimage;
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

  Future _shownotificationFB() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      '$fbname, successfully Logged In through Facebook',
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
        '$fbname, successfully Logged In through Facebook',
        generalNotificationDetails);
  }

  Future _shownotificationFBCancel() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      'Facebook authentication failed',
      enableVibration: true,
      importance: Importance.high,
      playSound: true,
      channelShowBadge: true,
      priority: Priority.high,
      icon: 'crown',
    );
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails);
    await localNotification.show(0, 'Crown', 'Facebook authentication failed',
        generalNotificationDetails);
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
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
              child: Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, spreadRadius: 1),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RoundedButton(
                      title: 'Get Started',
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
                              return ExtraLoadingScreen();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.025,
                    ),
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.025,
                    ),
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
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                      child: Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'NotoSans'),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Register NOW !',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'NotoSans'),
                      ),
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
                      height: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      child: Text(
                        '-OR-',
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Continue with',
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await _FBlogin();
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setString('fbname', fbname);
                            prefs.setString('fbimage', fbimage);
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/facebook.png'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
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
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/google.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
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


  // ignore: non_constant_identifier_names
  Future<Null> _FBlogin() async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        final graphResponse = await http.get(
          'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.width(800).height(800)&access_token=${accessToken.token}',
        );
        final profile = jsonDecode(graphResponse.body);
        fbname = profile['first_name'];
        fbimage = profile['picture']['data']['url'];
        _shownotificationFB();
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
              return FBLoadingScreen();
            },
          ),
        );
        break;
      case FacebookLoginStatus.cancelledByUser:
        _shownotificationFBCancel();
        break;
      case FacebookLoginStatus.error:
        _shownotificationFBCancel();
        break;
    }
  }
}
