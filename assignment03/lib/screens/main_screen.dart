/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Main Screen (The App's "Hub")

// lib/screens/main_screen.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'profile_screen.dart';
import '../widgets/app_drawer.dart';
import '../models/movie_model.dart'; // We need the Movie model
import '../data/movie_data.dart'; // And our list of movies

// This is a 'StatefulWidget'. Why? Because it needs to 'remember'
// which tab is currently selected (_selectedIndex) and
// what the user's favorite movies are.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // This line just connects the widget to its 'State' object below.
  State<MainScreen> createState() => _MainScreenState();
}

// This '_MainScreenState' class is where all the logic and memory live.
class _MainScreenState extends State<MainScreen> {
  // This variable is our 'memory' for the currently active tab.
  // 0 = Home, 1 = Favorites, 2 = Profile
  int _selectedIndex = 0;

  // This list holds the titles for our AppBar.
  // It matches the order of our tabs.
  static const List<String> _titles = <String>['Home', 'Favorites', 'Profile'];

  // --- STATE MANAGEMENT ---
  // This is the "single source of truth" for all our movie data.
  // We load the list from our mock data file just once.
  final List<Movie> _allMovies = mockMovies;

  // This is a 'getter'. It's a special function that
  // *calculates* a new list every time we access it.
  // It filters our main list down to only the ones where 'isFavorite' is true.
  List<Movie> get _favoriteMovies {
    return _allMovies.where((movie) => movie.isFavorite).toList();
  }

  // This is the function we pass down to our child widgets.
  // It's the only function that's allowed to change a movie's favorite status.
  void _toggleFavorite(Movie movie) {
    // 'setState' is the most important function in a StatefulWidget!
    // It tells Flutter, "Hey, I'm changing some data.
    // Please rebuild the widget and show the changes."
    setState(() {
      // We flip the boolean value (true becomes false, false becomes true).
      movie.isFavorite = !movie.isFavorite;
    });
  }
  // --- END STATE MANAGEMENT ---

  // This function is called by the BottomNavigationBar when a tab is tapped.
  void _onItemTapped(int index) {
    // We call 'setState' again to update our '_selectedIndex' variable.
    // This tells Flutter to rebuild and show the new, correct screen.
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // We build our list of screens *inside* the build method.
    // This is important because it means the 'FavoritesScreen'
    // gets a fresh list of '_favoriteMovies' every time we rebuild.
    final List<Widget> screens = [
      // Pass the full list and the toggle function to HomeScreen
      HomeScreen(allMovies: _allMovies, onToggleFavorite: _toggleFavorite),
      // Pass the *filtered* list and the toggle function to FavoritesScreen
      FavoritesScreen(
        favoriteMovies: _favoriteMovies,
        onToggleFavorite: _toggleFavorite,
      ),
      // ProfileScreen doesn't need any data, so it's 'const'
      const ProfileScreen(),
    ];

    // 'Scaffold' is the main layout for our entire screen.
    // It holds the AppBar, Drawer, Body, and BottomNav all together.
    return Scaffold(
      // Our AppBar's title cleverly updates based on the selected tab
      appBar: AppBar(title: Text(_titles[_selectedIndex])),

      // We add our custom AppDrawer widget here
      drawer: const AppDrawer(),

      // The 'body' is the main content. We just show the
      // currently selected widget from our 'screens' list.
      body: screens[_selectedIndex], // Use dynamic list
      // And finally, the BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // These are the tabs (Home, Favorites, Profile)
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        // This tells the nav bar which tab to highlight
        currentIndex: _selectedIndex,

        // This sets the color for the highlighted icon and label
        selectedItemColor: Theme.of(context).primaryColor,

        // This tells the nav bar which function to call when a tab is tapped
        onTap: _onItemTapped,
      ),
    );
  }
}
