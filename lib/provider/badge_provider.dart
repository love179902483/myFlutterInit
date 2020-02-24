import 'package:flutter/cupertino.dart';

class BadgeProvider extends ChangeNotifier {
  String _testBadgeProvider;
  get testBadgeProvider => _testBadgeProvider;
  void testBadgeProviderSet(String testProvider) {
    _testBadgeProvider = testProvider;
    notifyListeners();
  }
}
