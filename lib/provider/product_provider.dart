import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier {
  int _count = 0;
  get count => _count;
  set count(int count) {
    _count = count;
    notifyListeners();
  }
}
