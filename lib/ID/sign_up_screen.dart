import 'package:crown_shopping/ID/sign_up_screen2.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name;
  String number;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        'images/crown.png',
                      ),
                    ),
                  ),
                ),
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator:
                            RequiredValidator(errorText: 'Name is required'),
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black,
                        onChanged: (value) {
                          name = value;
                        },
                        decoration: InputDecoration(
                          errorStyle:
                              TextStyle(fontSize: 12, color: Colors.red),
                          labelText: 'NAME',
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PollerOne',
                            color: Color(0xFFff4d4d),
                          ),
                          hintText: 'Enter your Name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Phone number is required'),
                          LengthRangeValidator(
                              min: 10,
                              max: 10,
                              errorText: 'Please enter valid phone number'),
                        ]),
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.black,
                        onChanged: (value) {
                          number = value;
                        },
                        decoration: InputDecoration(
                          errorStyle:
                              TextStyle(fontSize: 12, color: Colors.red),
                          labelText: 'PHONE NUMBER',
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PollerOne',
                            color: Color(0xFFff4d4d),
                          ),
                          hintText: 'Enter your Phone Number',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFFff4d4d),
                  splashColor: Colors.black,
                  elevation: 6,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () async {
                    if (_formkey.currentState.validate()) {
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
                            return SignUpScreen2();
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
