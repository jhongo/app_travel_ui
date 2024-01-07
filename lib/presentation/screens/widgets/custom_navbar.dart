import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      initialActiveIndex: 2,
      backgroundColor: Colors.white,
      curve:Curves.easeIn ,
      activeColor: Colors.indigo,
      color: Colors.black38,
      height: 30,
      items: const [
      TabItem(icon: Icons.home),
      TabItem(icon: Icons.search),
      TabItem(icon: Icons.add),
      TabItem(icon: Icons.location_searching_rounded),
      TabItem(icon: Icons.person_2_outlined),
    ]);
  }
}