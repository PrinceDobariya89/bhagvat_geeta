import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SettingController extends ChangeNotifier{
  RxBool isShow = false.obs;
  List<String> language = ['english','hindi'];
  String? selectedLang;

  void change(){
    isShow.toggle();
    notifyListeners();
  }

  void changeLanguage(String? value){
    selectedLang = value;
    print(selectedLang);
    // update();
    notifyListeners();
  }
}