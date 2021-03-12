import 'package:flutter/material.dart';
import 'package:new_woo/Routers/route_name.dart';
import 'package:new_woo/Screens/Auth/auth_option.dart';
import 'package:new_woo/Screens/Auth/login_screen.dart';
import 'package:new_woo/Screens/Auth/register_screen.dart';
import 'package:new_woo/Screens/Home/home_screen.dart';
import 'package:new_woo/Screens/OnBoarding/on_boarding_screen.dart';
import 'package:new_woo/Screens/home_page.dart';
import 'package:new_woo/Screens/not_found_screen.dart';
import 'package:new_woo/Screens/second_screen.dart';

class CustomRoute{
  static Route<dynamic> allRoutes(RouteSettings settings){
    switch(settings.name){
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
        break;
      case secondRoute:
        return MaterialPageRoute(builder: (_) => SecondScreen());
        break;
      case welcomeRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
        break;
      case homePageScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
        break;
      case authOptionRoute:
        return MaterialPageRoute(builder: (_) => AuthOption());
        break;
    }
    return MaterialPageRoute(builder: (_) => NotFoundScreen());
  }
}