import 'package:new_woo/api/api_interface.dart';
import 'package:new_woo/contracts/controller.dart';
import 'package:new_woo/models/category.dart';

class CategoryController implements Controller{

  ApiInterface categoryApi;

  CategoryController(this.categoryApi);

  @override
  Future<List<dynamic>> getAll({int page}) async{
    var data = await categoryApi.getAll();
    List<Category> categories = [];
    for(var item in data){
      categories.add(Category.fromJsonMap(item));
    }

    return categories;

  }


}