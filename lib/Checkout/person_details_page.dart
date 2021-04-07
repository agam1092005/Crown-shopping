import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'Payment_method_Page.dart';

class PersonsDetails extends StatefulWidget {
  @override
  _PersonsDetailsState createState() => _PersonsDetailsState();
}

class _PersonsDetailsState extends State<PersonsDetails> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String name;
  String phone;
  String building;
  String housenumber;
  String state;
  String zipcode;

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
            if (_formkey.currentState.validate()) {
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
                    return PaymentMethods();
                  },
                ),
              );
            }
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
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: RequiredValidator(errorText: 'Name is required'),
                    keyboardType: TextInputType.name,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'NAME',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your Name',
                      prefixIcon: Icon(
                        Icons.person_outline_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
                    height: 20,
                  ),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Phone Number is required'),
                      LengthRangeValidator(
                          min: 10,
                          max: 10,
                          errorText: 'Please enter valid phone number'),
                    ]),
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your Phone Number',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
                    height: 20,
                  ),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: 'House Number is required'),
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      housenumber = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'House Number',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your House Number',
                      prefixIcon: Icon(
                        Icons.house_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
                    height: 20,
                  ),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText:
                            'Building/Street/Colony/Locality is required'),
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      building = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your Building/Street/Colony/Locality',
                      prefixIcon: Icon(
                        Icons.apartment_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
                    height: 20,
                  ),
                  TextFormField(
                    validator:
                        RequiredValidator(errorText: 'State is required'),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      state = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'State',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your State',
                      prefixIcon: Icon(
                        Icons.flag_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
                    height: 20,
                  ),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Email is required'),
                      LengthRangeValidator(
                          min: 5,
                          max: 10,
                          errorText: 'Please enter valid Zipcode'),
                    ]),
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      zipcode = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Zipcode',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PollerOne',
                          color: Color(0xFFff4d4d)),
                      hintText: 'Enter your Zipcode',
                      prefixIcon: Icon(
                        Icons.my_location_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(color: Colors.black54),
                      errorStyle:
                          TextStyle(fontSize: 12, color: Bgcolor.deepred),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
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
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
