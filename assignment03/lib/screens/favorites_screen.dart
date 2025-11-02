/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Favorites Screen
// lib/screens/favorites_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../widgets/movie_list_tile.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Movie> favoriteMovies;
  final Function(Movie) onToggleFavorite;

  const FavoritesScreen({
    super.key,
    required this.favoriteMovies,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    if (favoriteMovies.isEmpty) {
      return const Center(
        child: Text(
          'You have no favorites yet.\nTap the star icon to add one!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      itemCount: favoriteMovies.length,
      itemBuilder: (ctx, index) {
        final movie = favoriteMovies[index];
        return MovieListTile(movie: movie, onToggleFavorite: onToggleFavorite);
      },
    );
  }
}
