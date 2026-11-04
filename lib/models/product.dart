class Product {
  final String id;
  final String title;
  final String category;
  final double price;
  final String description;
  final String imageUrl;
  final double rating;
  final int reviewsCount;
  final String brand;
  final List<String> features;

  const Product({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.reviewsCount,
    required this.brand,
    required this.features,
  });

  String get formattedPrice {
    final value = price.toInt();
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

