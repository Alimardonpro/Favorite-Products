import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  String _name = '';
  String _email = '';
  String _phone = ''; // Dastlab ro'yxatdan o'tganda telefon raqam bo'sh bo'ladi!
  String _address = ''; // Dastlab ro'yxatdan o'tganda manzil bo'sh bo'ladi!
  int _ordersCount = 0;
  final int _discountsCount = 2;

  bool get isLoggedIn => _isLoggedIn;
  String get name => _name.isEmpty ? 'Foydalanuvchi' : _name;
  String get email => _email;
  String get phone => _phone;
  String get address => _address;
  int get ordersCount => _ordersCount;
  int get discountsCount => _discountsCount;

  void login({required String email, required String password}) {
    _email = email.trim();
    if (_name.isEmpty) {
      _name = email.split('@').first;
    }
    _isLoggedIn = true;
    notifyListeners();
  }

  void register({
    required String name,
    required String email,
    required String password,
  }) {
    _name = name.trim();
    _email = email.trim();
    _phone = ''; // Dastlab bo'sh bo'ladi, ilovaga kirgach kiritiladi!
    _address = ''; // Dastlab bo'sh bo'ladi, ilovaga kirgach kiritiladi!
    _ordersCount = 0;
    _isLoggedIn = true;
    notifyListeners();
  }

  void loginAsGuest() {
    _name = 'Mehmon';
    _email = 'guest@example.com';
    _phone = '';
    _address = '';
    _ordersCount = 0;
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _phone = '';
    _address = '';
    notifyListeners();
  }

  void updatePhone(String newPhone) {
    _phone = newPhone.trim();
    notifyListeners();
  }

  void updateAddress(String newAddress) {
    _address = newAddress.trim();
    notifyListeners();
  }

  void updateProfile({
    required String name,
    required String email,
    required String phone,
    required String address,
  }) {
    _name = name.trim();
    _email = email.trim();
    _phone = phone.trim();
    _address = address.trim();
    notifyListeners();
  }
}
