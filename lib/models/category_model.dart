class CategoryModel {
  String name;

  CategoryModel({
    required this.name,
  });

  static List<CategoryModel> categorys = [
    CategoryModel(name: 'Dresses'),
    CategoryModel(name: 'Jackets'),
    CategoryModel(name: 'Jeans'),
    CategoryModel(name: 'Shoes'),
  ];
}
