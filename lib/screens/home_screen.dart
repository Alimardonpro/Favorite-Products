import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import '../providers/settings_provider.dart';
import '../widgets/app_drawer.dart';
import '../widgets/favorite_badge_button.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _getCategoryTranslation(String category, SettingsProvider settings) {
    switch (category) {
      case 'Barchasi':
        return settings.tr('all');
      case 'Smartfonlar':
        return settings.tr('smartphones');
      case 'Noutbuklar':
        return settings.tr('laptops');
      case 'Quloqchinlar':
        return settings.tr('headphones');
      case 'Aqlli soatlar':
        return settings.tr('watches');
      case 'Geyming':
        return settings.tr('gaming');
      case 'Goʻzallik & Parvarish':
        return settings.tr('beauty');
      default:
        return category;
    }
  }

  @override
  Widget build(BuildContext context) {
    final productsProvider = context.watch<ProductsProvider>();
    final settings = context.watch<SettingsProvider>();
    final categories = productsProvider.categories;
    final selectedCategory = productsProvider.selectedCategory;
    final filteredProducts = productsProvider.filteredProducts;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: const AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.storefront_rounded, size: 26, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              settings.tr('app_title'),
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
        actions: const [
          FavoriteBadgeButton(),
          SizedBox(width: 8),
        ],
      ),
      body: Stack(
        children: [
          // 1. Asosiy Mahsulotlar Gridi (Orqa fonda skroll bo'ladi)
          filteredProducts.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off_rounded,
                          size: 64,
                          color: isDark ? const Color(0xFF64748B) : const Color(0xFF94A3B8),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          settings.tr('no_products'),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : const Color(0xFF1E293B),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          settings.tr('no_products_desc'),
                          style: TextStyle(
                            fontSize: 14,
                            color: isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            _searchController.clear();
                            productsProvider.setSearchQuery('');
                            productsProvider.selectCategory('Barchasi');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4F46E5),
                            foregroundColor: Colors.white,
                          ),
                          child: Text(settings.tr('all_products_btn')),
                        ),
                      ],
                    ),
                  ),
                )
              : GridView.builder(
                  // Qidiruv va Toifalar paneli ostidan chiqishi uchun yuqori padding
                  padding: const EdgeInsets.fromLTRB(16, 126, 16, 32),
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.64,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];
                    return ProductCard(product: product);
                  },
                ),

          // 2. Shaffof (Frosted Glass) Qidiruv va Toifalar paneli
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                child: Container(
                  decoration: BoxDecoration(
                    color: (isDark
                            ? const Color(0xFF0F172A)
                            : const Color(0xFFF8FAFC))
                        .withValues(alpha: 0.85),
                    border: Border(
                      bottom: BorderSide(
                        color: (isDark ? Colors.white : Colors.black)
                            .withValues(alpha: 0.06),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Qidiruv satri
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isDark ? const Color(0xFF1E293B) : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isDark
                                  ? const Color(0xFF334155)
                                  : const Color(0xFFE2E8F0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _searchController,
                            onChanged: (value) {
                              productsProvider.setSearchQuery(value);
                            },
                            style: TextStyle(
                              color: isDark ? Colors.white : const Color(0xFF0F172A),
                              fontSize: 14.5,
                            ),
                            decoration: InputDecoration(
                              hintText: settings.tr('search_hint'),
                              hintStyle: TextStyle(
                                color: isDark ? const Color(0xFF64748B) : const Color(0xFF94A3B8),
                                fontSize: 14.5,
                              ),
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                color: Color(0xFF4F46E5),
                              ),
                              suffixIcon: _searchController.text.isNotEmpty
                                  ? IconButton(
                                      icon: const Icon(Icons.clear_rounded, size: 20),
                                      onPressed: () {
                                        _searchController.clear();
                                        productsProvider.setSearchQuery('');
                                      },
                                    )
                                  : null,
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                            ),
                          ),
                        ),
                      ),

                      // Kategoriyalar (gorizontal filtr ro'yxati)
                      SizedBox(
                        height: 44,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            final category = categories[index];
                            final isSelected = category == selectedCategory;
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: FilterChip(
                                label: Text(_getCategoryTranslation(category, settings)),
                                selected: isSelected,
                                onSelected: (selected) {
                                  productsProvider.selectCategory(category);
                                },
                                selectedColor: const Color(0xFF4F46E5),
                                backgroundColor: isDark
                                    ? const Color(0xFF1E293B)
                                    : Colors.white,
                                labelStyle: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : (isDark ? const Color(0xFF94A3B8) : const Color(0xFF475569)),
                                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                                  fontSize: 12.5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(
                                    color: isSelected
                                        ? const Color(0xFF4F46E5)
                                        : (isDark ? const Color(0xFF334155) : const Color(0xFFE2E8F0)),
                                  ),
                                ),
                                showCheckmark: false,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              ),
                            );
                          },
                        ),
                      ),

                      // Filtr faol bo'lganda tozalash tugmasi
                      if (selectedCategory != 'Barchasi' ||
                          _searchController.text.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                _searchController.clear();
                                productsProvider.setSearchQuery('');
                                productsProvider.selectCategory('Barchasi');
                              },
                              child: Text(
                                settings.tr('clear_filter'),
                                style: TextStyle(
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? const Color(0xFF818CF8) : const Color(0xFF4F46E5),
                                ),
                              ),
                            ),
                          ),
                        )
                      else
                        const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
