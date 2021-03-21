import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _auth = FirebaseAuth.instance;
  String email;
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
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Email is required'),
                    EmailValidator(errorText: 'Enter a valid Email'),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'PollerOne',
                        color: Color(0xFFff4d4d)),
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    errorStyle: TextStyle(fontSize: 12, color: Colors.red),
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    height: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                title: 'Send Request',
                style: AlertTextStyle,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.05,
                onPressed: () {
                  try {
                    final user = _auth.sendPasswordResetEmail(email: email);
                    if (user != null && _formkey.currentState.validate()) {
                      Navigator.pop(context);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You can Reset your password through the link that will be sent to your entered Email ID.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45),
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
