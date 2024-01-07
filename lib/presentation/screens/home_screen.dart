import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/presentation/screens/screen.dart';
import 'package:flutter_travel_ui/presentation/screens/widgets/custom_navbar.dart';


class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  List<Widget> screens = [
    const PlaceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
      index:0,
      children: screens,
      
    ),
    bottomNavigationBar: const CustomNavBar(),
    );
  }
}