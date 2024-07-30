import 'package:dinedash/Components/my_button.dart';
import 'package:dinedash/Components/my_cart_tile.dart';
import 'package:dinedash/Pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dinedash/Models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);
    final userCart = restaurant.cart;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          // Clear cart button
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Are you sure you want to clear the cart?"),
                  actions: [
                    // Cancel button
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        restaurant.clearCart();
                      },
                      child: Text("Yes"),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: userCart.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined, size: 50, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              "Your cart is empty!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Text(
              "Add some items to your cart to see them here.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context, index) {
                final cartItem = userCart[index];
                return MyCartTile(cartItem: cartItem);
              },
            ),
          ),

          //button to buy
          MyButton(
              onTap: ()=> Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => PaymentPage()
              ),
              ),
              text: "Go to checkout"),

          const SizedBox(height: 25),

        ],
      ),
    );
  }
}
