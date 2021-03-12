import 'package:new_woo/models/attribute.dart';
import 'package:new_woo/models/base_product.dart';
import 'package:new_woo/models/image.dart';

class Variation extends BaseProduct{
  Image image;
  List<Attribute> attributes;

  Variation.fromJsonMap(Map<String, dynamic> map) : super.fromJsonMap(map){
    if(map['image'] != null){
      this.image = Image.fromJsonMap(map['image']);
    }

    this.attributes = [];
    if(map['attributes'] != null){
      for(var item in map['attributes']){
        this.attributes.add(Attribute.fromJsonMap(item));
      }
    }
  }

}