import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  String _testProvider;
  get testProvider => _testProvider;
  set testProvider(String testProvider) {
    _testProvider = testProvider;
    notifyListeners();
  }

  // 测试product数据
  List<Map<String, dynamic>> _products = [];
  get products => _products;
  set products( List<Map<String, dynamic>> products){
      _products = products;
  }
  removeProduct(int index){
    _products.removeAt(index);
    notifyListeners();
  }

  // 主题 01
  static ThemeData myTheme01 = ThemeData(
    primaryColor: Colors.orange
  );
  // 主题 02
  static ThemeData myTheme02 = ThemeData(
    primaryColor: Colors.pink
  );
  // 切换主题
  ThemeData currentTheme = myTheme01;
  reverseTheme(){
    if(currentTheme == myTheme01){
      print('theme01');
      currentTheme = myTheme02;
      notifyListeners();
    }else{
      print('theme02');
      currentTheme = myTheme01;
      notifyListeners();
    }
  }

}
