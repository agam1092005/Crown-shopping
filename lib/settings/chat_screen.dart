import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'OOPS !',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 50,
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
              'This service isn\'t available in your region at this movement.',
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
              'We are trying our best to expand our network at many regions at a time. Kindly send us an email regarding this service not available in your area, So that we could try to get this service as soon as possible in your area.',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'crownteamservice@gmail.com',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w900,
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
