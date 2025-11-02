/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Home Screen

// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../widgets/movie_list_tile.dart'; // We need our reusable tile

// This is our 'HomeScreen' widget.
// Notice it's 'Stateless' again. Why? Because it doesn't
// manage any state itself. It just receives a list and a function
// from its parent (the 'MainScreen') and displays them.
class HomeScreen extends StatelessWidget {
  // We expect to be given the *entire* list of movies
  final List<Movie> allMovies;

  // We also expect to be given the function that
  // handles tapping the favorite button
  final Function(Movie) onToggleFavorite;

  // The constructor makes sure we 'require' these two things
  // when this widget is created.
  const HomeScreen({
    super.key,
    required this.allMovies,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    // We're returning a ListView.builder directly.
    // Why no Scaffold or AppBar? Because our 'MainScreen'
    // is already providing it! This keeps our code clean.

    // ListView.builder is super efficient for long lists.
    // It only creates the items that are currently visible on screen.
    return ListView.builder(
      // Tell the list how many items it needs to build
      itemCount: allMovies.length,

      // 'itemBuilder' is the magic part. It's a function that
      // runs for every single item in the list.
      itemBuilder: (ctx, index) {
        // First, get the specific movie for this row
        final movie = allMovies[index];

        // Now, we just use our reusable MovieListTile widget.
        // This is so much cleaner than having all that Card
        // and ListTile code repeated here.
        return MovieListTile(
          // We pass the movie data *down* to the tile
          movie: movie,

          // We also pass the favorite function *down* to the tile
          // so it knows what to do when the star icon is pressed.
          onToggleFavorite: onToggleFavorite, // Pass down
        );
      },
    );
  }
}
