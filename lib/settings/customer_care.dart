import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/settings/privacy_policy.dart';
import 'package:crown_shopping/settings/return_policy.dart';
import 'package:crown_shopping/settings/terms_&_conditions.dart';
import 'package:flutter/material.dart';

import 'chatwithus_details.dart';

class CustomerCare extends StatefulWidget {
  @override
  _CustomerCareState createState() => _CustomerCareState();
}

class _CustomerCareState extends State<CustomerCare> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'CUSTOMER CARE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'images/care.gif',
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'We are really sorry for any problem that have lead you to our Customer Care service.',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  'For problems related to payments',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Call 1800 762 2288',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'For problems related to wrong/damaged/broken/poor quality of order',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Call 1800 662 2228',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'For any other queries, you can email us at',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'crownteamservice@gmail.com',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You can also chat with our executive',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            RoundedButton(
              title: 'CHAT WITH US',
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
                      return ChatDetails();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Before Contacting us, Kindly check our Return Policy, Privacy Policy and Terms & Conditions.',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'RETURN POLICY',
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
                      return ReturnPolicy();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              title: 'PRIVACY POLICY',
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
                      return PrivacyPolicy();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              title: 'TERMS & CONDITIONS',
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
                      return TermsConditions();
                    },
                  ),
                );
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
