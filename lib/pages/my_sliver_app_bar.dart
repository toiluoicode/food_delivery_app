import 'package:flutter/material.dart';
class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key,  required this.title, required this.child,});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 200,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background, // mau nen
      foregroundColor: Theme.of(context).colorScheme.inversePrimary, // mau icon
      title: Center(child:  Text("Sunset Dinner")),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
