import 'package:crown_shopping/Additional%20Pages/loading_screen.dart';
import 'package:crown_shopping/ID/Reset_Password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../OTHERS/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../OTHERS/Constants.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _auth = FirebaseAuth.instance;
  FlutterLocalNotificationsPlugin localNotification;
  String email;
  String password;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('crown');
    var initializeSettings =
    new InitializationSettings(android: androidInitialize);
    localNotification = new FlutterLocalNotificationsPlugin();
    localNotification.initialize(initializeSettings);
  }

  Future _shownotification() async {
    var androidDetails = new AndroidNotificationDetails(
      'id',
      'Crown',
      '$email, successfully logged In',
      enableVibration: true,
      importance: Importance.high,
      playSound: true,
      channelShowBadge: true,
      priority: Priority.high,
      icon: 'crown',
    );
    var generalNotificationDetails =
    new NotificationDetails(android: androidDetails);
    await localNotification.show(
        0, 'Crown', '$email, successfully logged In', generalNotificationDetails);
  }


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
                        errorStyle: TextStyle(fontSize: 12, color: Colors.red),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: RequiredValidator(errorText: 'Password is required'),
                      obscureText: true,
                      cursorColor: Colors.black,
                      toolbarOptions: ToolbarOptions(
                          copy: false,
                          paste: false,
                          cut: false,
                          selectAll: false),
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PollerOne',
                            color: Color(0xFFff4d4d)),
                        hintText: 'Enter your Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
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
                  ],
                ),
              ),
              TextButton(
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'NotoSans'),
                ),
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
                        return ResetPassword();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                title: 'Log In',
                style: AlertTextStyle,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.05,
                onPressed: () async {
                  _formkey.currentState.validate();
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);

                    if (user != null) {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString('displayemail', user.user.email);
                      Navigator.pushReplacement(
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
                            return LoadingScreen();
                          },
                        ),
                      );
                      _shownotification();
                    }
                  } catch (e) {
                    print(e);
                  }
                },
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
