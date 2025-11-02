/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Main Application File
// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the new screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomeScreen(), // Set HomeScreen as the home
    );
  }
}
