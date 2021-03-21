import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'MAINTENANCE PROBLEM !',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
            Center(
              child: Container(
                child: Image(
                  image: AssetImage(
                    'images/404.gif',
                  ),
                ),
              ),
            ),
            Text(
              'This service isn\'t available at this movement.',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We are trying our best to resolve this issue, Kindly Come back later',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
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
