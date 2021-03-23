import 'package:crown_shopping/home/Home_Page.dart';
import 'package:crown_shopping/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SplashStartScreen extends StatefulWidget {
  @override
  _SplashStartScreenState createState() => _SplashStartScreenState();
}

class _SplashStartScreenState extends State<SplashStartScreen>
    with TickerProviderStateMixin {
  String displayemail = '';
  // ignore: non_constant_identifier_names
  String FinalEmail = '';

  display() {
    if (displayemail != null) {
      return Text(
        'Welcome back $displayemail',
        style: TextStyle(
          fontFamily: 'Inconsolata',
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      );
    } else
      return Text(
        '',
      );
  }

  void initState() {
    getvalidation().whenComplete(() async {
      Timer(
        Duration(seconds: 3),
        () => FinalEmail == null
            ? Navigator.pushReplacement(
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
              )
            : Navigator.pushReplacement(
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
                    return HomePage();
                  },
                ),
              ),
      );
    });
    super.initState();
  }

  _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displayemail = prefs.getString('displayemail');
    });
  }

  getvalidation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: non_constant_identifier_names
    var ObtainEmail = prefs.getString('email');
    setState(() {
      FinalEmail = ObtainEmail;
    });
    print(FinalEmail);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getvalidation();
      _getData();
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
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
              ),
              SizedBox(
                height: 200,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: display(),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20),
                child: SpinKitWave(
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
