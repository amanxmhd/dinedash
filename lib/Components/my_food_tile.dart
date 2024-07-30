import 'package:dinedash/Models/food.dart';
import 'package:flutter/material.dart';

class MyFoodTile extends StatelessWidget {

  final Food food;
  final void Function()? onTap;

  const MyFoodTile({super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [

                // text food details
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text('\$' + food.Price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),

                    const SizedBox(height: 10),

                    Text(food.description,style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),),
                  ],
                )
                ),

                const SizedBox(height: 25),

                // Food Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(food.imagePath,
                  height: 120),
                ),
              ],
            ),
          ),
        ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary,
         endIndent: 25,
         indent: 25,
         ),

      ],
    );
  }
}
