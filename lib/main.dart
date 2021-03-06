import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:new_woo/Routers/route_name.dart';
import 'package:new_woo/Screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences shPref = await SharedPreferences.getInstance();
  int user_id = shPref.getInt('user_id');
  bool seen   = shPref.getBool("seen");
  String homeScreenRoute ;
  if (user_id == null && (seen == null || ! seen)){
    homeScreenRoute = welcomeRoute;
  }else if( seen && user_id == null ){
    homeScreenRoute = authOptionRoute;
  }else{
    homeScreenRoute = homePageScreenRoute;
  }
  runApp(
      MyHomePage(homeScreenRoute: homeScreenRoute)
//    DevicePreview(
//
//        usePreferences: false,
//
//        builder: (context) => MyHomePage(homeScreenRoute: homeScreenRoute)
//    ),
  );
}