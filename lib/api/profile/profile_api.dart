import 'dart:convert';

import 'package:new_woo/api/api_interface.dart';
import 'package:new_woo/api/main_api.dart';
import 'package:new_woo/models/profile.dart';
import 'package:http/http.dart' as http;

class ProfileApi extends MainApi implements ApiInterface{

  @override
  Future<List> getAll({int page}) {
    throw Exception('not implemented, not needed');
  }

  @override
  Future<dynamic> gitModel(int id) async{
    http.Response response = await http.get(PROFILE_URL + id.toString(), headers: headers);
    switch(response.statusCode){
      case 403:
        throw Exception( 'Wrong credentials' );
        break;
      case 500 :
        throw Exception('an error occurred');
        break;
      case 404:
        throw Exception('Resource not found');
        break;
      case 200:
        return jsonDecode(response.body);
        break;
    }
  }

  @override
  Future<dynamic> updateProfile(int id, CustomerProfile profile) async{
    print(profile.toMap());
    http.Response response = await http.put(PROFILE_URL + id.toString() , headers: headers, body: jsonEncode(profile.toMap()));
    switch(response.statusCode){
      case 403:
        throw Exception( 'Wrong credentials' );
        break;
      case 500 :
        throw Exception('an error occurred');
        break;
      case 404:
        throw Exception('Resource not found');
        break;
      case 200:
        return jsonDecode(response.body);
        break;
      default:
        return false;
        break;
    }
  }

  @override
  Future getVariations(int product) {
    throw Exception('not implemented, not needed');
  }

}