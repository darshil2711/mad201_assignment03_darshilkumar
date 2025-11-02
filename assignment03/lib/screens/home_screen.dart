/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Home Screen
// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../widgets/movie_list_tile.dart';

class HomeScreen extends StatelessWidget {
  final List<Movie> allMovies;
  final Function(Movie) onToggleFavorite;

  const HomeScreen({
    super.key,
    required this.allMovies,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allMovies.length,
      itemBuilder: (ctx, index) {
        final movie = allMovies[index];
        return MovieListTile(
          movie: movie,
          onToggleFavorite: onToggleFavorite, // Pass down
        );
      },
    );
  }
}
