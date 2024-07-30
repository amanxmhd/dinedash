import 'package:dinedash/Models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyRecipt extends StatelessWidget {
  const MyRecipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25,bottom: 25,top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order!"),

            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context,restaurant, child)=> 
              Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            Text("Estimated Delivery Time is: 4:10PM "),
          ],
        ),
      ),
    );
  }
}
