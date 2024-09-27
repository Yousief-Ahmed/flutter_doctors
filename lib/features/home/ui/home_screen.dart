import 'package:flutter/material.dart';
import 'package:flutter_doctors/core/theming/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.mainBlue,
      ),
      body: const SafeArea(
          child: Center(
            child: Text("Home Screen"),
          )
      ),
    );
  }
}
