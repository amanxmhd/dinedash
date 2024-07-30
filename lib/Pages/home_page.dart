import 'package:dinedash/Components/my_current_location.dart';
import 'package:dinedash/Components/my_description_box.dart';
import 'package:dinedash/Components/my_drawer.dart';
import 'package:dinedash/Components/my_food_tile.dart';
import 'package:dinedash/Components/my_sliver_app_bar.dart';
import 'package:dinedash/Components/my_tab_bar.dart';
import 'package:dinedash/Models/food.dart';
import 'package:dinedash/Models/restaurant.dart';
import 'package:dinedash/Pages/food_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  //tab controlller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to specific category

  List<Food> _filterMenuByCategory(FoodCategory category,List<Food>fullMenu){
    return fullMenu.where((food)=> food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category) {

      //get category



      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {

          //get individual food
          final food = categoryMenu[index];

          //return a food tile UI
          return MyFoodTile(
              food: food,
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=> FoodPage(food: food),
              ),
              ),
          );
          },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(indent: 25,endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                  ),
                 // my current location
                  MyCurrentLocation(),

                  // description box
                  MyDescriptionBox(),
                ],
              ),
              title: MyTabBar(tabController: _tabController),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu), // Assuming 'fullMenu' is a property in the Restaurant class
            );
          },
        ),

      ),
    );
  }
}
