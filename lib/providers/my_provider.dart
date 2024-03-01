import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
 String language='en';
  setLanguage(String lang){
language=lang;
notifyListeners();
  }

}