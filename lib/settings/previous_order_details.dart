import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:crown_shopping/home/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreviousOrder extends StatefulWidget {
  @override
  _PreviousOrderState createState() => _PreviousOrderState();
}

class _PreviousOrderState extends State<PreviousOrder> {
  // ignore: non_constant_identifier_names
  String randomNumber;
  String randomstring;
  // ignore: non_constant_identifier_names
  String OrderNumber = '';

  String productname = '';
  double productprice;
  String productimage = '';
  int productquantity;
  String productsize = '';

  getOrderNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      OrderNumber = prefs.getString('OrderNumber');
    });
  }
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
      getOrderNumber();
      getProductData();
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'PREVIOUS ORDER',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Product Details',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 20,
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
                          'Price: \$ ${productprice * productquantity}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Quantity: $productquantity',
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
                        ),
                      ],
                    ),
                  )
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
              '$OrderNumber',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your will be shipped in next 2-3 working days. If not, contact our customer care number.',
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Status: Shipment pending',
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, fontFamily: 'Inconsolata'),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: 'BACK TO SHOPPING', style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () async {
                SharedPreferences prefs =
                await SharedPreferences.getInstance();
                prefs.setString('OrderNumber', OrderNumber);
                Navigator.pushAndRemoveUntil(context,  PageRouteBuilder(
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return HomePage();
                  },
                ), (route) => false);
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
