import 'package:collection/collection.dart';
import 'package:dinedash/Models/cart_item.dart';
import 'package:dinedash/Models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {

  //List of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/burgers/b1.png",
      Price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/burgers/b2.png",
      Price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/burgers/b2.png",
      Price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Aloha Burger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/burgers/b3.png",
      Price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Blue moon Burger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/burgers/b4.png",
      Price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),

    //salads
    Food(
      name: "Caeser Salad",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/salads/s2.png",
      Price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/salads/s1.png",
      Price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/salads/s3.png",
      Price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/salads/s4.png",
      Price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "South west chicken salad",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/salads/s5.png",
      Price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),


    //sides
    Food(
      name: "Sweet Potato Fries",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/sides/si1.png",
      Price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "onion Ring",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/sides/si2.png",
      Price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Loaded Sweet khmr",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/sides/si3.png",
      Price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Crispy Mac",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/sides/si4.png",
      Price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/sides/si5.jpg",
      Price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),


    //deserts
    Food(
      name: "Chocolate Beownie",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/desserts/d1.jpg",
      Price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/desserts/d2.jpg",
      Price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/desserts/d3.jpg",
      Price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Pear Pie",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/desserts/d4.jpg",
      Price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Red velvet Lava Pie",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/desserts/d5.jpg",
      Price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),


    //drinks
    Food(
      name: "Lemonade",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/drinks/dr1.jpg",
      Price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/drinks/dr2.jpg",
      Price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/drinks/dr3.jpg",
      Price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Mojito",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/drinks/dr4.jpg",
      Price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy patty with melted cheddar, tomato and hint of onion pickle",
      imagePath: "lib/assets/drinks/dr5.png",
      Price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99)
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S

  */

  final List<CartItem> _cart = [];

// add to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see it there is cart item already with the same food for the selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // Check if the items are same
      bool isSameFood = item.food == food;


      // check if the list selected addons are the same
      bool isSameAddon = ListEquality().equals(
          item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddon;
    });

    // if the already items then just add quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise add the item to the cart
    else {
      _cart.add(CartItem(food: food,
        selectedAddons: selectedAddons,
      ),
      );
    }
    notifyListeners();
  }

  // Method to remove an item from the cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners(); // Notify listeners after modifying the cart
    }
  }


//get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.Price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }


//get total number of items in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear the cart

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

    /*

  H E L P E R S

  */
//generate the receipt

  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's Your receipt");
    receipt.writeln();

    // format the date to include seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(
        DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------------");

    for (final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${
          cartItem.food.name} - ${_formatPrice(cartItem.food.Price)}");
      if (cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();


  }

// format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }

/*






   */

  }