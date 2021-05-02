import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Payments/COD_Loading.dart';
import 'package:crown_shopping/Payments/Existing_card.dart';
import 'package:crown_shopping/Payments/Payment-services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseCardType extends StatefulWidget {
  @override
  _ChooseCardTypeState createState() => _ChooseCardTypeState();
}

class _ChooseCardTypeState extends State<ChooseCardType> {
  @override
  void initState() {
    super.initState();
    StripeService.intit();
  }

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
    PayViaNewCard(BuildContext context) async {
      var response = await StripeService.PayViaNewCard(
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
      } else if (response.success == false) {
        ScaffoldMessenger.of(context)
            .showSnackBar(
          SnackBar(
            content: Text(response.message),
            duration: Duration(milliseconds: 1000),
          ),
        );
        Navigator.pop(context);
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          scrollDirection: Axis.vertical,
          children: [
            Text(
              'Card Type',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: ListTile(
                  onTap: () {
                    PayViaNewCard(context);
                  },
                  leading: Icon(
                    Icons.add,
                    size: 30,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 25),
                  title: Text(
                    'Pay via New Card',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: ListTile(
                  onTap: () {
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
                          return ExistingCardPage();
                        },
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.payment_outlined,
                    size: 30,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 25),
                  title: Text(
                    'Pay via Existing Card',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
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
              height: 20,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Tip for Payment with New Card',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 1,
                    content: Container(
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Use card with details:',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Card Number: 4242 4242 4242 4242',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Expiry Date: ANY',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'CVV: ANY',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'This card is for Testing purpose, hence will not work in real life.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'OK',
                          style: TextStyle(color: Bgcolor.deepred),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.bar_chart,
                    size: 25,
                  ),
                  Text(' Tip for Payment with New Card'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('Powered by Stripe '),
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
