import 'dart:math';

class ProductModel {
  String name;
  String image;
  double price;
  String brand;
  String category;
  List<String> sizes;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.brand,
    required this.category,
    required this.sizes,
  });

  static double _doubleInRange(Random source, num start, num end) =>
      source.nextDouble() * (end - start) + start;
  static Random random = Random();

  static List<ProductModel> products = List.generate(
    productName.length,
    (index) => ProductModel(
      name: productName[index],
      image: 'assets/images/v${(index + 1)}.png',
      price: _doubleInRange(random, 100, 200),
      sizes: ['m', 'l'],
      brand: 'OH ZSA ZSA',
      category: 'dresses',
    ),
  );

  static List<String> productName = [
    'Vestido de vestir Vida',
    'Vestido de fiesta Scarlett',
    'Vestido de vestir Flavia',
    'Vestido de vestir Vida',
  ];
}
