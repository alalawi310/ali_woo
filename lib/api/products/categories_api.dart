import 'dart:convert';
import 'package:new_woo/api/api_interface.dart';
import 'package:new_woo/api/main_api.dart';
import 'package:new_woo/models/profile.dart';
import 'package:http/http.dart' as http;

class CategoryApi extends MainApi implements ApiInterface{
  @override
  Future<List<dynamic>> getAll({int page}) async{
    http.Response response = await http.get(CATEGORIES_URL, headers: headers);
    switch (response.statusCode){
      case 401:
        throw Exception('Basic Auth has failed');
        break;
      case 200:
        return jsonDecode(response.body);
        break;
      default:
        throw Exception('A Generic error has occurred');
        break;
    }
  }

  @override
  Future<dynamic> gitModel(int id) async{
    throw Exception('not implemented , as not needed');
  }

  @override
  Future updateProfile(int id, CustomerProfile profile) {
    throw Exception('not implemented, not needed');
  }

  @override
  Future getVariations(int product) {
    throw Exception('not implemented, not needed');
  }

}