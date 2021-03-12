import 'package:flutter/material.dart';
import 'package:new_woo/api/payment/payable.dart';
import 'package:new_woo/models/card_info.dart';
import 'package:new_woo/models/payment_response.dart';

class CashOnDelivery implements Payable{


  @override
  Future<PaymentResponse> payForOrder({@required double amount, CardInfo card}) async {
    return PaymentResponse('cash', 'Approved');
  }
}