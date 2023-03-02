class NavigationModel {
  String icon;
  String name;

  NavigationModel({
    required this.icon,
    required this.name,
  });

  static List<NavigationModel> navigations = [
    NavigationModel(
      icon: 'assets/icons/home.png',
      name: 'Home',
    ),
    NavigationModel(
      icon: 'assets/icons/cart.png',
      name: 'Cart',
    ),
    NavigationModel(
      icon: 'assets/icons/notification.png',
      name: 'Notifications',
    ),
    NavigationModel(
      icon: 'assets/icons/user.png',
      name: 'User',
    ),
  ];
}
