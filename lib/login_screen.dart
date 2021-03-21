import 'package:crown_shopping/Additional%20Pages/Extra%20loading_screen.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'ID/sign_in_screen.dart';
import 'ID/sign_up_screen.dart';
import 'package:flutter/animation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 400000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
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
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/facebook.png'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                        GestureDetector(
                          onTap: () {},
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
}
