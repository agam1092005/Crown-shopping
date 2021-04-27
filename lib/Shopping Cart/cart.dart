import 'package:crown_shopping/Checkout/checkout_loading1.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/Shopping%20Cart/cart_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  String productname = '';
  String productprice = '';

  getcartData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      productname = prefs.getString('productname');
      productprice = prefs.getString('productprice');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getcartData();
    });
    List cart = [
      CartModal("$productname", "$productprice"),
    ];

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: [
        Text(
          'SHOPPING CART',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 32,
          ),
        ),
        // Container(
        //   color: Bgcolor.deepred,
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.only(
        //           bottom: 20, left: 20, right: 20, top: 10),
        //       child: Text(
        //         'Just put your favourite products in the Cart, I will store them for you',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontWeight: FontWeight.w600,
        //           fontSize: 15,
        //         ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ),
        // ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: cart.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.6,
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                              image: AssetImage(
                                'images/W6.png',
                              ),
                            ),
                            color: Colors.black38,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                        ),
                        title: Text(cart.single.name),
                        subtitle: Text('Quantity x1'),
                        trailing: Text(cart.single.price.toString()),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.black26,
                      ),
                    ),
                    Flexible(
                      child: SizedBox(
                        width: 10,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete_outline_outlined,
                        size: 30,
                        color: Bgcolor.darkdeepred,
                      ),
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.remove('productname');
                        prefs.remove('productprice');
                      },
                      splashRadius: 25,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
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
            'TOTAL AMOUNT: $productprice x ${cart.length}',
            style: DrawerTextStyle,
          ),
          alignment: Alignment.bottomRight,
        ),
        RoundedButton(
          title: 'CHECKOUT',
          style: AlertTextStyle,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.05,
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
        ),
      ],
    );
  }
}
