import 'package:dinedash/Components/my_button.dart';
import 'package:dinedash/Models/food.dart';
import 'package:dinedash/Models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // Initialize selected addons to false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  // method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons){

    // close the current food page to go back to menu
    Navigator.pop(context);

    // Format the selected addons

    List<Addon> currentSelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true){
        currentSelectedAddons.add(addon);
      }
    }

    // Add to cart

    context.read<Restaurant>().addToCart(food, currentSelectedAddons);

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            // Wrap the Column with SingleChildScrollView
            child: Column(
              children: [
                // Food Image
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(15.0), // Reduced padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // Food price
                      Text(
                        '\$${widget.food.Price.toString()}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 8), // Reduced height
                      // Food description
                      Text(widget.food.description),
                      const SizedBox(height: 8), // Reduced height
                      Divider(
                          color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(height: 8), // Reduced height
                      // Add-ons list
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Add-ons checkboxes
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          // Get individual add-ons
                          Addon addon = widget.food.availableAddons[index];
                          // Return checkbox UI
                          return CheckboxListTile(
                            contentPadding: EdgeInsets.zero, // Removed padding
                            title: Text(addon.name),
                            subtitle: Text(
                              '\$${addon.price}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // Button => Add to cart
                MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                  text: "Add to cart",
                ),
                const SizedBox(height: 15), // Reduced height
              ],
            ),
          ),
        ),
        // Back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
