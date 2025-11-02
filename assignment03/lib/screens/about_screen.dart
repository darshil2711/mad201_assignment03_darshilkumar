/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// About Screen

// lib/screens/about_screen.dart
import 'package:flutter/material.dart';

// This is a 'StatelessWidget', which is perfect for a page like this.
// 'Stateless' just means the page doesn't need to keep track of
// any changing data or user input. It just shows stuff.
class AboutScreen extends StatelessWidget {
  // The 'const' constructor helps Flutter optimize performance.
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 'Scaffold' is our basic page layout. It gives us the
    // white background and a place to put an AppBar.
    return Scaffold(
      // The 'appBar' is the bar at the top of the screen.
      appBar: AppBar(title: const Text('About')),

      // 'body' is everything below the app bar.
      // We're using 'Center' to put all its contents
      // right in the middle of the screen.
      body: const Center(
        // 'Padding' is a great widget for giving our text
        // some breathing room, so it isn't crammed
        // right against the edges of the screen.
        child: Padding(
          padding: EdgeInsets.all(16.0), // 16 pixels of space on all sides
          child: Text(
            // The '\n\n' creates a new line (a paragraph break).
            'This is a Movie Explorer app built with Flutter.\n\nCreated by Darshilkumar Karkar.',

            // This just makes sure the text is centered,
            // which looks nice for a multi-line message.
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18), // A nice readable font size
          ),
        ),
      ),
    );
  }
}
