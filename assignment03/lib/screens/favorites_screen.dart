/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Favorites Screen
// lib/screens/favorites_screen.dart
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Your favorite movies will appear here.',
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );
  }
}
