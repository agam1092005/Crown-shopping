import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'PRIVACY POLICY',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Any personal information provided to or gathered by Crown under this Privacy Notice will be stored and controlled by Crown (the data controller / data fiduciary).',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'What Personal Information About Customers Does Crown Gather?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'The information we learn and gather from you, personal or otherwise, is used to register you for Crown direct Pay, verify your identity to permit you to use Crown direct Pay, undertake transactions (including to facilitate and process payments) in connection with Crown direct Pay, communicate with you about Crown direct Pay, any promotional offers, services or updates associated with Crown direct Pay, and generally maintain your accounts with us. We also use this information to customize your experience and improve Crown direct Pay, or to prevent or detect fraud or abuses of Crown direct Pay that are made available to you and to enable third parties to carry out technical, logistical, payment processing or other functions on our behalf.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'What About Cookies?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Cookies are alphanumeric identifiers that we transfer to your computer\'s hard drive through your Web browser to enable our systems to recognize your browser so we can recognize you as an Crown user if you return to use Crown direct Pay using the same computer and browser and to provide features such as Recommended for You, or personalised advertisements on other websites.The "Help" portion of the toolbar on most browsers will tell you how to prevent your browser from accepting new cookies, how to have the browser notify you when you receive a new cookie, or how to disable cookies altogether. Additionally, you can disable or delete similar data used by browser add-ons, such as Flash cookies, by changing the add-on\'s settings or visiting the website of its manufacturer. However, you then may lose the ability to utilize some of the Crown direct Pay features, and we recommend that you leave cookies turned on.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Does Crown Share the Information It Receives?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Information about our users is an important part of our business, and we are not in the business of selling it to others. We share customer information only as described below and with the family of companies owned and controlled by Crown.com, Inc. and that are either subject to this Privacy Notice or follow practices at least as protective as those described in this Privacy Notice.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Disclosure to Other Users',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Depending on which payment service you use, you may need to disclose your or your recipients’ phone number or e-mail address with us or to other users so they can send payments to you or receive payments from you. When you send payments, your name, and/or phone number, e-mail address may be disclosed to the intended recipient. Once a transaction is complete, this information will be displayed in the transaction list of the user receiving payment.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Purchases',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'We do not disclose your financial information (such as credit card information) to any merchant or other recipient of payments you make without your prior consent. When you make a purchase, we may make certain other personal information about you available to the recipient to complete the transaction (such as name, mobile number, e-mail and shipping address), in the event of a dispute regarding the transaction, or as part of a fraud investigation. The use of information that we provide to a recipient will be governed by the agreements or policies of that recipient.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Promotional Offers',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sometimes we send offers to selected groups customers on behalf of other businesses. When we do this, we do not give that business your name and address. If you do not want to receive such offers, please adjust your customer communication preferences under your account settings.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'How Secure Is Information About Me?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'We work to protect the security of personal information during transmission by using Secure Sockets Layer (SSL) software, which encrypts information you input in addition to maintaining security of your information as per the International Standard IS/ISO/IEC 27001 on "Information Technology Security Techniques Information Security Management System-Requirements". We restrict access to your personally identifiable information to employees who need to know that information in order to provide products or Services to you. We maintain physical, electronic and procedural safeguards in connection with the collection, storage and disclosure of personal information (including sensitive personal information). Our security procedures mean that we may occasionally request proof of identity before we disclose personal information to you. We reveal only the last four digits of your credit/debit card numbers when confirming an order. Of course, we transmit the entire credit/debit card number to the appropriate credit card company for payment processing. It is important for you to take steps to protect against unauthorized access to your account. You should keep confidential your password, security questions, and any other credentials used to access your account (your "Credentials"). The security of your account with Crown relies on your protection of your Credentials. DO NOT SHARE YOUR CREDENTIALS. If you do share your Credentials with a third party for any reason, the third party may have access to your account and your personal information, and you may be responsible for actions taken using your Credentials. If you believe someone else has obtained access to your Credentials, please change them immediately by logging in to your account and changing your Profile settings, and also contact us right away.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Are Children Allowed to Use Crown Pay?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Use of Crown direct Pay is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Retention Policy',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'We will collect and retain your personal information only for the purpose of providing you with Crown direct Pay services, and Crown and will retain this information only till such period as prescribed under applicable law.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'For more Information about Privacy, Click on the button given below -',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              title: 'KNOW MORE',
              style: AlertTextStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              onPressed: () {
                openurl();
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

  openurl() {
    String url = "https://www.freeprivacypolicy.com/live/fbbe483d-59d0-4381-95ce-f5ab7d309abc";
    launch(url);
  }
}
