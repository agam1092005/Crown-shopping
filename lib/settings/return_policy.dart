import 'package:flutter/material.dart';

class ReturnPolicy extends StatefulWidget {
  @override
  _ReturnPolicyState createState() => _ReturnPolicyState();
}

class _ReturnPolicyState extends State<ReturnPolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'RETURN POLICY',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            Center(
              child: Container(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'images/return.gif',
                  ),
                ),
              ),
            ),
            Text(
              'General Returns Policy',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '1. Products are returnable within the applicable return window if you’ve received them in a condition that is physically damaged, has missing parts or accessories, defective or different from their description on the product detail page on Crown.com.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '2. If you report an issue with your product, we may schedule an Expert visit to your location. This visit is scheduled by placing an order with Crown through Crown.com Home Services. Subject to Crown.com Home Services Terms and Conditions, a resolution will be provided based on the Expert\'s evaluation report.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '3. Return will be processed only if: It is determined that the product was not damaged while in your possession. The product is not different from what was shipped to you. The product is returned in original condition (with brand’s/manufacturer\'s box, MRP tag intact, user manual, warranty card and all the accessories therein).',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '4. If you wish to return an electronic device that stores any personal information, please ensure that you have removed all such personal information from the device prior to returning. Crown shall not be liable in any manner for any misuse or usage of such information.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '5. Products may not be eligible for return in some cases, including cases of buyer\'s remorse such as incorrect model or color of product ordered or incorrect product ordered.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '6. Products marked as "non-returnable" on the product detail page cannot be returned.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '7. Additional information is not required to return an eligible order unless otherwise noted in the category specific policy.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '8. Products may be eligible for replacement only if the same seller has the exact same item in stock.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '9. If the replacement request is placed and the seller does not have the exact same product in stock, we will provide a refund.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Note :',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'If you\'ve received a non-returnable product in a damaged/defective condition, you can contact us within 10 days from the delivery of the product.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
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
