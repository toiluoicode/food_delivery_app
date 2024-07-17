import 'package:flutter/material.dart';
class MyTextfield extends StatelessWidget {
  const MyTextfield({super.key, required this.controller, required this.hintText, required this.obscureText});
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: controller,
        obscureText: obscureText, // van ban se bien thanh **
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).colorScheme.tertiary)
          ),
          focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }
}
