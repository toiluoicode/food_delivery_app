import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textField.dart';
class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();
  final TextEditingController configPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 72,
              ),
              const SizedBox(height: 25,),
              Text(
                "Let's create an account for you",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              // email textField
              const SizedBox(height: 25,),
              MyTextfield(controller: emailController, hintText: 'Email', obscureText: false),

              // password textField
              const SizedBox(height: 25,),
              MyTextfield(controller: passController, hintText: 'Password', obscureText: true),

              // config password
              const SizedBox(height: 25,),
              MyTextfield(controller: configPassController, hintText: 'Password', obscureText: true),

              // sign button
              const SizedBox(height: 25,),
              MyButton(text: "Sign Up",onTap: (){},),

              // not a remenber ? resgister now
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                    ),
                  ),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],)

            ],
          )
      ),
    );
  }
}
