/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Favorites Screen

// lib/screens/favorites_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../widgets/movie_list_tile.dart'; // We can reuse our list tile!

// This is also a 'StatelessWidget'. You might think, "but the list changes!"
// And you're right, but this *widget itself* doesn't manage that change.
// It just receives a list ('favoriteMovies') and displays it.
// The 'MainScreen' (a StatefulWidget) is the one managing the list.
class FavoritesScreen extends StatelessWidget {
  // This screen needs to be given the list of movies to display.
  final List<Movie> favoriteMovies;

  // It also needs the function to call if the user taps the star icon
  // so they can unfavorite a movie right from this screen.
  final Function(Movie) onToggleFavorite;

  // The constructor requires these two things to be "passed in"
  // from the MainScreen.
  const FavoritesScreen({
    super.key,
    required this.favoriteMovies,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    // --- This is a nice touch ---
    // First, we check if the list is empty.
    if (favoriteMovies.isEmpty) {
      // If it is, we show a helpful message instead of a blank screen.
      return const Center(
        child: Text(
          'You have no favorites yet.\nTap the star icon to add one!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    // --- If the list is NOT empty... ---
    // We build a ListView, just like on the HomeScreen.
    return ListView.builder(
      // The number of items is just the length of our favorites list.
      itemCount: favoriteMovies.length,
      itemBuilder: (ctx, index) {
        // Get the specific movie for this row.
        final movie = favoriteMovies[index];

        // And here's the best part: we get to REUSE our
        // MovieListTile widget! No need to write new code.
        // We just pass it the movie and the toggle function.
        return MovieListTile(movie: movie, onToggleFavorite: onToggleFavorite);
      },
    );
  }
}
