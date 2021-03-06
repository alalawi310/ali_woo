import 'package:new_woo/api/payment/checkout_payment.dart';
import 'package:new_woo/api/payment/payable.dart';
import 'package:new_woo/models/card_info.dart';
import 'package:new_woo/models/payment_response.dart';

class PaymentController{

  Payable paymentGateway;


  PaymentController(this.paymentGateway);

  Future<PaymentResponse> payForOrder ({double amount, CardInfo card}) async{

     //Before Payment
      PaymentResponse paymentResponse;
    if(this.paymentGateway is CheckoutPayment){
      print('Card Payment');
      paymentResponse = await this.paymentGateway.payForOrder(amount: amount, card: card);
    }else{
      print('Cash Payment');
      paymentResponse = await this.paymentGateway.payForOrder(amount: amount);
    }
    return paymentResponse;
    //After Payment
  }
}