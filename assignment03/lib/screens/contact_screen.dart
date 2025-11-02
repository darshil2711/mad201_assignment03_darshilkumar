/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Contact Screen

// lib/screens/contact_screen.dart
import 'package:flutter/material.dart';

// Just like the About screen, this is a 'StatelessWidget'.
// It's perfect for simple pages that just display static info
// and don't need to change or react to user input.
class ContactScreen extends StatelessWidget {
  // A 'const' constructor for performance optimization.
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // We start with a 'Scaffold' to get that standard
    // page look with an app bar and a body.
    return Scaffold(
      // The bar at the top of the screen.
      appBar: AppBar(title: const Text('Contact')),

      // 'body' is all the content below the app bar.
      // We'll 'Center' everything to make it look clean.
      body: const Center(
        // 'Padding' adds a nice bit of empty space
        // around our text so it doesn't touch the screen edges.
        child: Padding(
          padding: EdgeInsets.all(16.0), // 16 pixels of space on all sides
          child: Text(
            'Contact us at: support@movieapp.com',
            textAlign:
                TextAlign.center, // Good for single lines of centered text
            style: TextStyle(fontSize: 18), // Make it easy to read
          ),
        ),
      ),
    );
  }
}
