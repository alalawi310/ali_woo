import 'package:flutter/material.dart';
import 'package:new_woo/models/card_info.dart';
import 'package:new_woo/models/payment_response.dart';

class Payable{

  Future<PaymentResponse> payForOrder({@required double amount, CardInfo card}) async{}
}