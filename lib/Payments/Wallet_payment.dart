import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WalletPayment extends StatefulWidget {
  @override
  _WalletPaymentState createState() => _WalletPaymentState();
}

class _WalletPaymentState extends State<WalletPayment> {

  double productprice;
  int productquantity;

  getProductData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      productprice = prefs.getDouble('productprice');
      productquantity = prefs.getInt('productquantity');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getProductData();
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'Wallet Payment',
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
                  color: Bgcolor.deepred,
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
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              child: ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  "According to our Terms & Conditions, your Crown Wallet should atleast have \$60 for placing an order.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inconsolata'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your wallet has \$10 only',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Something went wrong',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text(
                'Shipping Fee: FREE',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.bottomRight,
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              child: Text(
                'AMOUNT: \$ ${productprice * productquantity}',
                style: DrawerTextStyle,
              ),
              alignment: Alignment.bottomRight,
            ),
            SizedBox(
              height: 40,
            ),
            RoundedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.05,
              title: 'CANCEL',
              style: AlertTextStyle,
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
