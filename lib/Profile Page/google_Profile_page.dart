import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/Wallet/WalletShimmer.dart';
import 'package:crown_shopping/login_screen.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoogleProfilePage extends StatefulWidget {
  @override
  _GoogleProfilePageState createState() => _GoogleProfilePageState();
}

class _GoogleProfilePageState extends State<GoogleProfilePage> {

  // ignore: non_constant_identifier_names
  String Googlename = '';
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  getGData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Googlename = prefs.getString('Googlename');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getGData();
    });

    final _auth = FirebaseAuth.instance;
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
                backgroundImage: AssetImage('images/Profile.png'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Gmail ID - $Googlename',
              style: TaglineTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Sign In Method -',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GOOGLE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
                _auth.signOut();
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
