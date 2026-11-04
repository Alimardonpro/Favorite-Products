import 'package:flutter/foundation.dart';
import '../models/product.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => List.unmodifiable(_items);

  int get count => _items.length;

  bool get isEmpty => _items.isEmpty;

  bool isFavorite(String productId) {
    return _items.any((item) => item.id == productId);
  }

  /// Sevimlilar holatini o'zgartiradi (qo'shadi yoki olib tashlaydi)
  /// Natija sifatida qo'shilganini (true) yoki o'chirilganini (false) qaytaradi
  bool toggleFavorite(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    final bool isAdded;
    if (index >= 0) {
      _items.removeAt(index);
      isAdded = false;
    } else {
      _items.add(product);
      isAdded = true;
    }
    notifyListeners();
    return isAdded;
  }

  void removeFavorite(String productId) {
    final index = _items.indexWhere((item) => item.id == productId);
    if (index >= 0) {
      _items.removeAt(index);
      notifyListeners();
    }
  }

  void clearFavorites() {
    if (_items.isNotEmpty) {
      _items.clear();
      notifyListeners();
    }
  }

  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + item.price);
  }

  String get formattedTotalPrice {
    final value = totalPrice.toInt();
    final str = value.toString();
    final buffer = StringBuffer();
    int count = 0;
    for (int i = str.length - 1; i >= 0; i--) {
      buffer.write(str[i]);
      count++;
      if (count % 3 == 0 && i != 0) {
        buffer.write(' ');
      }
    }
    return '${buffer.toString().split('').reversed.join('')} soʻm';
  }
}

