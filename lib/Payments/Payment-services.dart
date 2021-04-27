import 'package:flutter/services.dart';
import 'package:stripe_payment/stripe_payment.dart';

class StripeTransactionResponse {
  String message;
  bool success;
  StripeTransactionResponse({this.message, this.success});
}

class StripeService {
  static String apiBase = 'https://api,stripe.com/v1';
  static String paymentApiURL = '${StripeService.apiBase}/payment_intents';
  static String secret = 'sk_test_51IkupJSDQp12dVyh4npN4MFabSQRygeZAK0KWUweiqlEwQolLltzMFC7jVgG0WYuN0pGw4YgJF3SI650AMIZnrlA00PkYlwGvR';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ${StripeService.secret}',
    'Content-Type': "application/x-www-form-urlencoded",
  };


  static intit() {
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: "pk_test_51IkupJSDQp12dVyhTH0OMtVrdbSLW063gg65ZD7dkSgeJeLNaknRzNsd6ApxxtDGQIIzR631vt3CBuGhRkI59w3S00QyCXLSWy",
        merchantId: 'Test',
        androidPayMode: 'test',
      ),
    );
  }

  // ignore: non_constant_identifier_names
  static StripeTransactionResponse PayViaExistingCard(
      {String amount, String currency}) {
    return new StripeTransactionResponse(
      message: 'Transaction successful',
      success: true,
    );
  }

  // ignore: non_constant_identifier_names
  static Future<StripeTransactionResponse> PayViaNewCard(
      {String amount, String currency}) async {
    try {
      var paymentMethod = await StripePayment.paymentRequestWithCardForm(
          CardFormPaymentRequest(),
      );
      print(paymentMethod);
      return new StripeTransactionResponse(
        message: 'Transaction successful',
        success: true,
      );
    } on PlatformException catch(e) {
      return  StripeService.getPlatformExecptionError(e);
    } catch (e) {
      return new StripeTransactionResponse(
        message: 'Transaction failed${e.toString()}',
        success: false,
      );
    }
  }

  static getPlatformExecptionError(e) {
    String message = 'Something went Wrong';
    if(e.code == 'cancelled') {
      message = 'Transaction cancelled';
    }

    return new StripeTransactionResponse(
      message: message,
      success: false
    );
  }
}
