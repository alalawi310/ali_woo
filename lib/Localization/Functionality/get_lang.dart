import 'package:flutter/material.dart';
import 'package:new_woo/Localization/Functionality/get_translated.dart';
import 'package:new_woo/Localization/Util/languages.dart';
import 'package:new_woo/Screens/home_page.dart';

void getEnLang(BuildContext context , Language lang) async {
  for (Language lang in Language.langList()) {
    Locale _temp;
    if (lang.langCode == ENGLISH) {
      _temp = await setLocale(lang.langCode);
      MyHomePage.setLocale(context, _temp);
    }
  }
}

void getArLang(BuildContext context , Language lang) async {
  for (Language lang in Language.langList()) {
    Locale _temp;
    if (lang.langCode == ARABIC) {
      _temp = await setLocale(lang.langCode);
      MyHomePage.setLocale(context, _temp);
    }
  }
}
