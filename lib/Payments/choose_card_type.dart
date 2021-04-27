import 'package:crown_shopping/Payments/Existing_card.dart';
import 'package:crown_shopping/Payments/Payment-services.dart';
import 'package:flutter/material.dart';


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

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    PayViaNewCard(BuildContext context) async  {
      var response = await StripeService.PayViaNewCard(
        amount: '20000',
        currency: 'USD',
      );
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(response.message),
          duration: Duration(milliseconds: 1000),
        ),
      )
          .closed
          .then((_) => Navigator.pop(context));

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
              height: 60,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('Powered by Stripe '),
            ),
          ],
        ),
      ),
    );
  }
}
