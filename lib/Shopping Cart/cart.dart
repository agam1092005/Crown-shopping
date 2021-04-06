import 'package:crown_shopping/Checkout/checkout_loading1.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Bgcolor.deepred,
              ),
            ),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'SHOPPING CART',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    100,
                  ),
                ),
                color: Bgcolor.darkdeepred,
              ),
            ),
          ],
        ),
        Container(
          color: Bgcolor.deepred,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Your order is just few clicks away',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RoundedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionsBuilder: (context, animation, animationTime, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return CheckoutLoading1();
                      },
                    ),
                  );
                },
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.05,
                title: 'CHECKOUT',
                style: AlertTextStyle,
              ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
