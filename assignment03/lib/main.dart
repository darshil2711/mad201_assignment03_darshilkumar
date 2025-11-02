/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Main Application File

// lib/main.dart

import 'package:flutter/material.dart';
// We're importing 'main_screen.dart' now, not 'home_screen.dart'.
// This is because MainScreen will handle the bottom navigation bar.
import 'screens/main_screen.dart'; // Import the new MainScreen

// This 'main' function is the front door for the entire app.
// It all starts right here.
void main() {
  // 'runApp' tells Flutter to build and show our main widget, 'MyApp'.
  runApp(const MyApp());
}

// 'MyApp' is the root widget. Think of it as the foundation
// that holds the entire application together.
class MyApp extends StatelessWidget {
  // This 'const' constructor just helps Flutter optimize performance.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 'MaterialApp' is a super important widget. It gives us
    // all the standard Google Material Design stuff, like navigation,
    // themes, and more.
    return MaterialApp(
      // This is the title that might appear in the device's task manager.
      title: 'Movie Explorer',

      // 'theme' lets us set up default colors, fonts, etc. for the whole app.
      theme: ThemeData(
        // We're setting the main color swatch to Indigo.
        // Try changing this to 'Colors.blue' or 'Colors.red' to see what happens!
        primarySwatch: Colors.indigo,

        // This just helps Flutter adjust the app's density for different devices.
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Sets a nice, light grey background for all our pages.
        scaffoldBackgroundColor: Colors.grey[100],
      ),

      // 'home' tells the MaterialApp what to show as the "first page".
      // We're pointing it to our MainScreen, which holds the bottom tabs.
      home: const MainScreen(), // Set MainScreen as the home
    );
  }
}
