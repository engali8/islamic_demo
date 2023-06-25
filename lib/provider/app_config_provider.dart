import 'package:flutter/cupertino.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage='en';
  String appTheming='light';
  void changeLanguage(String newLanguage){
    if(newLanguage==appLanguage){return;}
    else appLanguage = newLanguage;
    notifyListeners();
  }
  void changeTheming(String newTheme){
    if(newTheme==appTheming){return;}
    else appTheming = newTheme;
    notifyListeners();
  }

}