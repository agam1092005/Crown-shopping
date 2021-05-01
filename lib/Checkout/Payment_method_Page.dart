import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:crown_shopping/Payments/COD_Page.dart';
import 'package:crown_shopping/Payments/Wallet_payment.dart';
import 'package:crown_shopping/Payments/choose_card_type.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaymentMethods extends StatefulWidget {
  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String detailname = '';
  String detailnumber = '';
  String detailhousenumber = '';
  String detailaddress = '';
  String detailstate = '';
  String detailzipcode = '';

  getdetailsData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      detailname = prefs.getString('detailname');
      detailnumber = prefs.getString('detailnumber');
      detailhousenumber = prefs.getString('detailhousenumber');
      detailaddress = prefs.getString('detailaddress');
      detailstate = prefs.getString('detailstate');
      detailzipcode = prefs.getString('detailzipcode');
    });
  }

  String productname = '';
  double productprice;
  String productimage = '';
  int productquantity;
  String productsize = '';

  getProductData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      productname = prefs.getString('productname');
      productprice = prefs.getDouble('productprice');
      productimage = prefs.getString('productimage');
      productquantity = prefs.getInt('productquantity');
      productsize = prefs.getString('productsize');
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getdetailsData();
      getProductData();
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirmation',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: $detailname',
                        style: DrawerTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Phone Number: $detailnumber',
                        style: DrawerTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'House Number: $detailhousenumber',
                        style: DrawerTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Address: $detailaddress',
                        style: DrawerTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'State: $detailstate',
                        style: DrawerTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Zipcode: $detailzipcode',
                        style: DrawerTextStyle,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Ordering Item',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                            image: AssetImage(
                              'images/$productimage',
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
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$productname',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Price: ${productprice * productquantity}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Quantity: ${productquantity.toString()}',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Size: $productsize',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment',
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
                  height: 40,
                ),
                Text(
                  'Payment methods',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
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
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ChooseCardType();
                                },
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 25),
                          title: Text(
                            'Credit/Debit Card',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            'Digital',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return WalletPayment();
                                },
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 25),
                          title: Text(
                            'Crown Wallet',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            'Digital',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return CODPage();
                                },
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios, size: 25),
                          title: Text(
                            'Cash on Delivery (COD)',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            'Contact-less Delivery ensured',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
