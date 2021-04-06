import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';
import 'Payment_method_Page.dart';

class PersonsDetails extends StatefulWidget {
  @override
  _PersonsDetailsState createState() => _PersonsDetailsState();
}

class _PersonsDetailsState extends State<PersonsDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFff4d4d),
          splashColor: Colors.black,
          elevation: 6,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
          ),
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
                  return PaymentMethods();
                },
              ),
            );
          },
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'Add Your Details',
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
                  color: Colors.black54,
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
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
