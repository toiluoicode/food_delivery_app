import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/food.dart';
class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selection= {};
  FoodPage({super.key, required this.food}){
    for (Addon addon in food.availableAddons){
      selection[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar() ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //food image
            Image.asset(widget.food.imagePath),

            // food name
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                  ),

                  Text(
                    '\$ '+ widget.food.price.toString(),
                    style:
                    TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Theme.of(context).colorScheme.primary

                    ),
                  ),

                  // food description
                  Text(
                    widget.food.description,
                    style:
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.primary

                    ),
                  ),
                  const SizedBox(height: 10,),

                  Divider(color: Theme.of(context).colorScheme.secondary,),


                  Text("Add-ons",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.inversePrimary),),

                  // addons
                  Container(
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context,indedx){
                        //get individual addons
                        Addon addon = widget.food.availableAddons[indedx];
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text('\$ '+addon.prices.toString()),
                          value: widget.selection[addon],
                          onChanged: (bool? value){
                            setState(() {
                              widget.selection[addon] = value!;
                            });
                          },
                        );
                      }),
                  ),
                ],
              ),
            ),
            // button add to card
            MyButton(
              onTap: (){},
              text: "Add-to-card"
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
