/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// App Drawer
// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).pop(); // Close the drawer
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: const Text(
              'Movie Explorer',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pop(); // Just close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () => _navigateTo(context, const AboutScreen()),
          ),
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
