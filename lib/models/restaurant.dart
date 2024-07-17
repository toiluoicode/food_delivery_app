import 'package:flutter/cupertino.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    //Burger
    Food(
      name: "Classic Cheeseburger",
      description: "Them vao",
      imagePath: "lib/images/Burgers/aloha_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", prices: 0.99),
        Addon(name: "Bacon", prices: 1.99),
        Addon(name: "Avacado", prices: 2.99)
      ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/bluemoon_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/burger_bbq.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/burger_cheese.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/vegetable_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),

    // salads
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),

    //sides
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),

    //desserts
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),

    //drinks
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheeseburger",
        description: "Them vao",
        imagePath: "lib/images/Burgers/aloha_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", prices: 0.99),
          Addon(name: "Bacon", prices: 1.99),
          Addon(name: "Avacado", prices: 2.99)
        ]
    ),

  ];
  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;



  /*
  O P E R A T I O N S
  * */


  /*
  H E L P E R
  * */
}