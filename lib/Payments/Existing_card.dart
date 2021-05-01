import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Payments/Payment-services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'COD_Loading.dart';

class ExistingCardPage extends StatefulWidget {
  @override
  _ExistingCardPageState createState() => _ExistingCardPageState();
}

class _ExistingCardPageState extends State<ExistingCardPage> {
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

    // ignore: non_constant_identifier_names
    PayViaExistingCard(BuildContext context) {
      var response = StripeService.PayViaExistingCard(
        amount: '20000',
        currency: 'USD',
      );
      if (response.success == true) {
        ScaffoldMessenger.of(context)
            .showSnackBar(
              SnackBar(
                content: Text(response.message),
                duration: Duration(milliseconds: 1000),
              ),
            );
            Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  transitionsBuilder: (context, animation, animationTime, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return CODloading();
                  },
                ),
              );
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'Existing Cards',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 20,
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
            Text(
              'Previously used card',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text(
                      'CONFORMATION',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    elevation: 1,
                    buttonPadding: EdgeInsets.symmetric(horizontal: 20),
                    content: Text(
                        'Confirm the payment to pay \$${productprice * productquantity} via Existing card. Money shall not be refunded under some circumstances.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Transaction cancelled'),
                              duration: Duration(milliseconds: 1000),
                            ),
                          );
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Bgcolor.deepred),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          PayViaExistingCard(context);
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Bgcolor.deepred),
                        ),
                      ),
                    ],
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                );
              },
              child: CreditCardWidget(
                  cardBgColor: Bgcolor.cream,
                  obscureCardNumber: true,
                  cardNumber: '4242424242424242',
                  expiryDate: '04/24',
                  cardHolderName: 'NAME',
                  cvvCode: '424',
                  showBackView: false),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This card is for Testing purpose, hence will not work in real life.',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
