import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'TERMS & CONDITIONS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Conditions Relating to Your Use of Crown Shopping',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'If you use the website, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer to prevent unauthorised access to your account. You agree to accept responsibility for all activities that occur under your account or password. You agree and acknowledge that you will use your account on the website to purchase products only for your personal use and not for business purposes.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please review our Privacy Notice, which also governs your visit to Crown.com, to understand our practices. The personal information / data provided to us by you during the course of usage of Crown.com will be treated as strictly confidential and in accordance with the Privacy Notice and applicable laws and regulations.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You agree, understand and acknowledge that the website is an online platform that enables you to purchase products listed on the website at the price indicated therein at any time from any location. You further agree and acknowledge that Crown is only a facilitator and is not and cannot be a party to or control in any manner any transactions on the website. Accordingly, the contract of sale of products on the website shall be a strictly bipartite contract between you and the sellers on Crown.com.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We will do our utmost to ensure that availability of the website will be uninterrupted and that transmissions will be error-free. However, due to the nature of the Internet, this cannot be guaranteed. Also, your access to the website may also be occasionally suspended or restricted to allow for repairs, maintenance, or the introduction of new facilities or services at any time without prior notice. We will attempt to limit the frequency and duration of any such suspension or restriction.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This website or any portion of this website (including but not limited to any copyrighted material, trademarks, or other proprietary information) may not be reproduced, duplicated, copied, sold, resold, visited, distributed or otherwise exploited for any commercial purpose without express written consent of Crown Seller Services Private Limited and / or its affiliates, as may be applicable.You may not frame or use framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of Crown.com and its affiliates without express written consent. You may not use any meta tags or any other "hidden text" utilising Crown Seller Services Private Limited\'s or its affiliates\' names or trademarks without the express written consent of Crown Seller Services Private Limited and / or its affiliates, as applicable. Any unauthorised use terminates the permission or license granted by Crown Seller Services Private Limited and / or its affiliates, as applicable.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Users of this website may post reviews, comments and other content; send communications; and submit suggestions, ideas, comments, questions, or other information, as long as the content is not illegal, obscene, abusive, threatening, defamatory, invasive of privacy, infringing of intellectual property rights, or otherwise injurious to third parties, or objectionable and does not consist of or contain software viruses, political campaigning, commercial solicitation, chain letters, mass mailings, or any form of "spam." In the event a user uses a false e-mail address, impersonates any person or entity, or otherwise misleads as to the origin of any content. Amazon.in reserves the right (but not the obligation) to remove, refuse, delete or edit any content that in the sole judgement of Crown.com violates these Conditions of use and, or terminate your permission to access or use this website.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Use of Crown.com is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. If you are a minor i.e. under the age of 18 years, you may use Amazon.in only with the involvement of a parent or guardian.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Before shipping / delivering your order to you, Seller may request you to provide supporting documents (including but not limited to Govt. issued ID and address proof) to establish the ownership of the payment instrument used by you for your purchase. This is done in the interest of providing a safe online shopping environment to Our Users.',
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
