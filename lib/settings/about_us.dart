import 'dart:ui';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'ABOUT THE BRAND',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontFamily: 'Bungee',
                  letterSpacing: 10,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black26,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 200),
                height: 2,
                color: Bgcolor.deepred,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We bring amazing people together to make amazing things happen',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'When Crown was founded in 1995, its mission was to be \"the world\'s most customer-centric company\".',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We are a company that is 100% oriented towards the needs of our customers. Our actions, goals, projects, programs and inventions begin and end with the customer in mind. In other words, we start with the customer and work backwards from there. When we come across something that really works for our customers, we redouble our efforts in hopes of making it an even bigger success. However, it is not always that easy. Inventing is chaotic and every now and then we have to accept defeat.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'SECURITY',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: 'Bungee',
                  letterSpacing: 4,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black26,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 280),
                height: 2,
                color: Bgcolor.deepred,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We care & securely deliver your package to you',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage('images/boxes.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'At Crown, we inspect every product to make sure that nothing is damaged/broken and we deliver to our loved ones - OUR CUSTOMERS.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Know more about our SECURITY',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You can check Polices and Terms & Conditions from Setting under Our Polices.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'INNOVATION',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: 'Bungee',
                  letterSpacing: 4,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black26,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 250),
                height: 2,
                color: Bgcolor.deepred,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '\"It takes a diverse team of talented individuals to do extraordinary work. That’s why Crown welcomes you for who you are and who you want to become.\"',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage('images/internship.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Come to Crown as a student and your team will welcome you as a full contributor, like any other employee. That’s just one reason why you can have so much impact here. You’ll get hands-on experience while collaborating with some of the best minds in the world. Yes, you’ll learn from them, but they expect to learn from you, too.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Crown pvt. ltd since 2020',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
