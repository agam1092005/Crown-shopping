import 'package:flutter/material.dart';

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
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
            Text(
              'Crown Direct Pay',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('images/barcode.png'),
              height: 120,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Pay directly from Crown wallet using our new feature Crown Direct Pay',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
