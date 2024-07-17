import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 25, top: 10, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    // Muon chia se mau sac, kieu chu thi dung theme
                  ),
                ),
                CupertinoSwitch(
                    value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
                    onChanged: (value) => Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
