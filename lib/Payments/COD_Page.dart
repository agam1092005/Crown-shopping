import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'COD_Loading.dart';

class CODPage extends StatefulWidget {
  @override
  _CODPageState createState() => _CODPageState();
}

class _CODPageState extends State<CODPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'Cash on Delivery',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.fact_check_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.home_work_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.payment,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.done_outline_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              child: ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  "Due to then COVID - 19 pandemic, we do not recommend 'Cash on Delivery (COD)' service. As exchange of Cash may lead to spread of virus, we however take full precaution and measures along with Contact-less Delivery. We may also block the service of 'Cash on Delivery (COD)' if there is any government instructions.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inconsolata'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Total Order Amount is: (Price)',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Payment method: Cash on Delivery (COD)',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 40,
            ),
            RoundedButton(
              onPressed: () {
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
                      return CODloading();
                    },
                  ),
                );
              },
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.05,
              title: 'PLACE ORDER',
              style: AlertTextStyle,
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
