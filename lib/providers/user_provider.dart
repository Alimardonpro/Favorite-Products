import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String _name = 'Alimardon Tojimurodov';
  String _email = 'alimardon@example.com';
  String _phone = '+998 (90) 123-45-67';
  String _address = 'Toshkent sh., Yunusobod tumani, 14-mavze';
  final int _ordersCount = 12;
  final int _discountsCount = 4;

  String get name => _name;
  String get email => _email;
  String get phone => _phone;
  String get address => _address;
  int get ordersCount => _ordersCount;
  int get discountsCount => _discountsCount;

  void updateProfile({
    required String name,
    required String email,
    required String phone,
    required String address,
  }) {
    _name = name;
    _email = email;
    _phone = phone;
    _address = address;
    notifyListeners();
  }
}
