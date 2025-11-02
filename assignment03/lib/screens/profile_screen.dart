/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Profile Screen

// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';

// This is another 'StatelessWidget'. It's perfect for a profile
// page that just shows static information (like a name and email)
// and doesn't need to save any user input.
class ProfileScreen extends StatelessWidget {
  // 'const' constructor for performance.
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // We're returning a 'Padding' widget directly.
    // Why no Scaffold or AppBar? Because our 'MainScreen'
    // is already providing it! This keeps our code clean.
    return const Padding(
      // Add 16 pixels of space on all sides of our content.
      padding: EdgeInsets.all(16.0),

      // We'll 'Center' the content in the middle of the screen.
      child: Center(
        // We use a 'Column' to stack our widgets vertically:
        // Icon
        // (space)
        // Name
        // (space)
        // Email
        child: Column(
          // This tells the Column to align its children
          // in the vertical center of the screen.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 'CircleAvatar' is a quick and easy way
            // to get that classic circular profile picture look.
            // We're just putting a person icon inside it for now.
            CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),

            // 'SizedBox' is the perfect, simple widget
            // for adding a bit of empty space between items.
            SizedBox(height: 16),

            // This is for the student's name.
            Text(
              'Student Name',
              // Make it big and bold so it stands out.
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // A smaller space between the name and email.
            SizedBox(height: 8),

            // And this is for the student's email.
            Text(
              'student@email.com',
              // Make it a bit smaller and grey for a nice visual hierarchy.
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
