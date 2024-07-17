import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget{
  final Food food;
  final void Function()? onTap;
  const FoodTile({ super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        '\$' + food.price.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox(width: 12),
                // food images
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.asset(food.imagePath, height: 120 ,fit: BoxFit.cover,)),
              ],
            ),
          ),
        ),

        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25, // cách sau
          indent: 25,// cách trươớc
        )
      ],
    );
  }
}