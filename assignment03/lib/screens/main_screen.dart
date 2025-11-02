/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Main Screen
// lib/screens/main_screen.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'profile_screen.dart';
import '../widgets/app_drawer.dart';
import '../models/movie_model.dart'; // Import
import '../data/movie_data.dart'; // Import

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<String> _titles = <String>['Home', 'Favorites', 'Profile'];

  // --- STATE MANAGEMENT ---
  final List<Movie> _allMovies = mockMovies;

  List<Movie> get _favoriteMovies {
    return _allMovies.where((movie) => movie.isFavorite).toList();
  }

  void _toggleFavorite(Movie movie) {
    setState(() {
      movie.isFavorite = !movie.isFavorite;
    });
  }
  // --- END STATE MANAGEMENT ---

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Dynamically build screens to pass data
    final List<Widget> screens = [
      HomeScreen(allMovies: _allMovies, onToggleFavorite: _toggleFavorite),
      FavoritesScreen(
        favoriteMovies: _favoriteMovies,
        onToggleFavorite: _toggleFavorite,
      ),
      const ProfileScreen(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      drawer: const AppDrawer(),
      body: screens[_selectedIndex], // Use dynamic list
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
