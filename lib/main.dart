import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), 
      theme: ThemeData(
        useMaterial3: true
      ),
    );
  }
}