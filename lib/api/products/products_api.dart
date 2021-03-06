import 'dart:convert';

import 'package:new_woo/api/api_interface.dart';
import 'package:new_woo/api/main_api.dart';
import 'package:new_woo/models/profile.dart';
import 'package:http/http.dart' as http;

class ProductApi extends MainApi implements ApiInterface{
  @override
  Future<List<dynamic>> getAll({int page}) async {
    PRODUCTS_URL = page != null ? PRODUCTS_URL + '?page=$page' : PRODUCTS_URL;
    http.Response response = await http.get(PRODUCTS_URL, headers: headers);
    switch( response.statusCode ){
        case 401:
          throw Exception('Basic Auth has failed');
          break;
        case 200:
          return jsonDecode(response.body);
          break;
        default:
          throw Exception('No data received');
          break;
    }
  }

  @override
  Future<dynamic> gitModel(int id) async {
    http.Response response = await http.get(PRODUCTS_URL + '/${id.toString()}', headers: headers);
    switch( response.statusCode ){
      case 401:
        throw Exception('Basic Auth has failed');
        break;
      case 200:
        return jsonDecode(response.body);
        break;
      default:
        throw Exception('No data received');
        break;
    }
  }

  @override
  Future getVariations(int product) async {
    http.Response response = await http.get(PRODUCTS_URL + '/${product.toString()}' + '/variations'  ,headers: headers);
      switch( response.statusCode ){
        case 200:
          return jsonDecode(response.body);
          break;
        default:
          throw Exception('no data recieved');
          break;
      }
  }

  @override
  Future updateProfile(int id, CustomerProfile profile) {

    throw Exception('not implemented, not needed');
  }

}