import 'package:crown_shopping/Additional%20Pages/loading_screen.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../OTHERS/Constants.dart';
import '../OTHERS/rounded_button.dart';

class SignUpScreen2 extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen2> {
  final _auth = FirebaseAuth.instance;
  String email;
  FlutterLocalNotificationsPlugin localNotification;
  final emailcontroller = TextEditingController();
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
      '$email, successfully Registered',
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
        0, 'Crown', '$email, successfully Registered', generalNotificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration:  BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.grey.shade400,
                Colors.grey.shade600,
                Colors.grey.shade700,
              ],
            ),
          ),
          child: Padding(
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
                        controller: emailcontroller,
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
                          errorStyle: TextStyle(fontSize: 12, color: Bgcolor.deepred),
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PollerOne',
                            color: Color(0xFFff4d4d),
                          ),
                          hintText: 'Enter your Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintStyle: TextStyle(color: Colors.black54),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Bgcolor.deepred, width: 2.0),
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
                        height: 20.0,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Password is required'),
                          MinLengthValidator(6,
                              errorText:
                                  'Password must be at least 6 digits long'),
                        ]),
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
                          errorStyle: TextStyle(fontSize: 12, color: Bgcolor.deepred),
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PollerOne',
                            color: Color(0xFFff4d4d),
                          ),
                          hintText: 'Enter your Password',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintStyle: TextStyle(color: Colors.black54),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Bgcolor.deepred, width: 2.0),
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
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                    title: 'Register',
                    style: AlertTextStyle,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    onPressed: () async {
                      _formkey.currentState.validate();
                      try {
                        final newUser =
                        await _auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                        if (newUser != null) {
                          SharedPreferences prefs = await SharedPreferences
                              .getInstance();
                          prefs.setString('displayemail', newUser.user.email);
                          prefs.setString('email', emailcontroller.text);
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
                      } catch (e)  {
                        if (e != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 1200),
                              content: Text(
                                'User cannot be created or User already exist',
                              ),
                            ),
                          );
                        }
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
