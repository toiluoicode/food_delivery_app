// food item;
class Food{
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons
  });
}
// food caregories
enum FoodCategory{
  burgers,
  salads,
  sides,
  desserts,
  drinks
}
// food addons
class Addon {
  String name;
  double prices;
  Addon({
    required this.name,
    required this.prices
});
}

