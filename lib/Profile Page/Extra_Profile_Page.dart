import 'package:crown_shopping/ID/sign_in_screen.dart';
import 'package:crown_shopping/ID/sign_up_screen.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import '../OTHERS/Constants.dart';
import 'package:flutter/material.dart';


class ExtraProfilePage extends StatefulWidget {
  @override
  _ExtraProfilePageState createState() => _ExtraProfilePageState();
}

class _ExtraProfilePageState extends State<ExtraProfilePage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Hey, You are not logged In.....',
                      style: TaglineTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector( onTap: () {
                    Navigator.pushReplacement(
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
                    child: Container(
                      child: Center(
                        child: Text(
                          'Log In',
                          style: AlertTextStyle,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Bgcolor.deepred,
                      ),
                      height: 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector( onTap: () {
                    Navigator.pushReplacement(
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
                    child: Container(
                      child: Center(
                        child: Text(
                          'Register',
                          style: AlertTextStyle,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Bgcolor.deepred,
                      ),
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
    );
  }
}
