import 'dart:core';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/food_page.dart';
import 'package:food_delivery_app/pages/my_sliver_app_bar.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  // sort out and return list of food item that belong to a a specific cart

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food)=> food.category == category).toList();
  }
  // return list of foods in given category

  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category){
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length ,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder:(context,index){
          final food = categoryMenu[index];
          return FoodTile(
              food: food,
              onTap:() => Navigator.push(context,MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        }
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)=>[
        MySliverAppBar(
          title: MyTabBar(tabController: _tabController,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
              // my current location
              const MyCurrentLocation(),
              
              // description Box
              const MyDescriptionBox()

            ],
          ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child)=> TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu)
          ),
        ),
      ),
    );
  }
}
