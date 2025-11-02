/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// App Drawer

// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import '../screens/about_screen.dart'; // We need this to navigate to the About page
import '../screens/contact_screen.dart'; // And this for the Contact page

// This is our custom AppDrawer widget. It's a 'StatelessWidget'
// because it doesn't need to remember any changing data.
// It just shows a list of links.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // This is a little helper function we made to keep our code clean (DRY).
  // It handles the logic for navigating to a new page.
  void _navigateTo(BuildContext context, Widget screen) {
    // First, we close the drawer so it's not in the way.
    Navigator.of(context).pop();

    // Then, we 'push' the new screen on top of the current one.
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  @override
  Widget build(BuildContext context) {
    // The main widget here is 'Drawer', which Flutter
    // knows how to slide in from the side.
    return Drawer(
      // We use a 'ListView' so that if we add a ton of links later,
      // the drawer will automatically become scrollable.
      child: ListView(
        // 'padding: EdgeInsets.zero' is important!
        // It removes the default padding at the top of the ListView,
        // so our DrawerHeader can sit flush against the top edge.
        padding: EdgeInsets.zero,
        children: <Widget>[
          // 'DrawerHeader' is a special widget designed just for this spot.
          // It gives us this nice colored block at the top.
          DrawerHeader(
            // We're styling it to match our app's primary color.
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: const Text(
              'Movie Explorer',
              // Make the text white and bigger so it's easy to read.
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          // --- Drawer Menu Items ---

          // This is our link to the "Home" screen.
          ListTile(
            leading: const Icon(Icons.home), // The icon on the left
            title: const Text('Home'), // The text
            onTap: () {
              // Since we're *already* on the home screen (MainScreen),
              // we can just close the drawer.
              Navigator.of(context).pop(); // Just close the drawer
            },
          ),

          // This is our link to the "About" screen.
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            // When tapped, we call our helper function
            // and tell it which screen to navigate to.
            onTap: () => _navigateTo(context, const AboutScreen()),
          ),

          // This is our link to the "Contact" screen.
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text('Contact'),
            onTap: () => _navigateTo(context, const ContactScreen()),
          ),
        ],
      ),
    );
  }
}
