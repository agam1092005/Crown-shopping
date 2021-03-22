import 'dart:io';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/Wallet/WalletShimmer.dart';
import 'package:crown_shopping/login_screen.dart';
import 'package:crown_shopping/settings/settings_ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../OTHERS/bgcolor.dart';

class GoogleProfilePage extends StatefulWidget {
  @override
  _GoogleProfilePageState createState() => _GoogleProfilePageState();
}

class _GoogleProfilePageState extends State<GoogleProfilePage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    // ignore: non_constant_identifier_names
    final PickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = PickedFile;
    });
  }

  // ignore: non_constant_identifier_names
  Widget Bottomsheet() {
    return BottomSheet(
      // ignore: non_constant_identifier_names
      builder: (BuildContext) {
        return Container(
          height: 320,
          color: Color(0xFF737373),
          child: Container(
            padding: EdgeInsets.all(30),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Text('Choose Source', style: TaglineTextStyle),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    takePhoto(ImageSource.camera);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Bgcolor.deepred,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_outlined,
                            color: Colors.black, size: 40),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'CAMERA',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Bungee'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    takePhoto(ImageSource.gallery);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Bgcolor.deepred,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo_library_outlined,
                            color: Colors.black, size: 40),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'GALLERY',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Bungee'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      onClosing: () {
        Navigator.pop(context);
      },
    );
  }

  String displayemail = '';

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displayemail = prefs.getString('displayemail');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getData();
    });

    final _auth = FirebaseAuth.instance;
    return Builder(
      builder: (context) => Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: <Widget>[
            Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: _imageFile == null
                      ? AssetImage('images/Profile.png')
                      : FileImage(
                    File(_imageFile.path),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 70,
                  child: FloatingActionButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (builder) => Bottomsheet(),
                      );
                    },
                    elevation: 4,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 30,
                    ),
                    splashColor: Bgcolor.deepred,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Gmail ID - $displayemail',
              style: TaglineTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Sign In Method -',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GOOGLE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'CROWN WALLET',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
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
                      return WalletLoading();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              title: 'SETTINGS',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
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
                      return SettingsPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey,
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'SIGN OUT',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () {
                _auth.signOut();
                Navigator.pushAndRemoveUntil(
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
                        return LoginScreen();
                      },
                    ),
                        (route) => false);
              },
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
