import 'package:flutter_test/flutter_test.dart';
import 'package:favorite_products/main.dart';
import 'package:favorite_products/providers/favorites_provider.dart';
import 'package:favorite_products/providers/products_provider.dart';

void main() {
  test('FavoritesProvider logic test', () {
    final favProvider = FavoritesProvider();
    final prodProvider = ProductsProvider();
    final product = prodProvider.products.first;

    expect(favProvider.count, 0);
    expect(favProvider.isFavorite(product.id), false);

    // Qo'shish
    final added = favProvider.toggleFavorite(product);
    expect(added, true);
    expect(favProvider.count, 1);
    expect(favProvider.isFavorite(product.id), true);

    // Olib tashlash
    final removed = favProvider.toggleFavorite(product);
    expect(removed, false);
    expect(favProvider.count, 0);
    expect(favProvider.isFavorite(product.id), false);
  });

  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Kirish ekrani sarlavhasi mavjudligini tekshirish
    expect(find.text('Xush kelibsiz!'), findsOneWidget);
  });
}
