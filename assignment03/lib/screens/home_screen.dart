/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Home Screen
// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../data/movie_data.dart'; // Import our mock data
import '../widgets/movie_list_tile.dart'; // Import our reusable widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = mockMovies;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) {
          final movie = movies[index];
          return MovieListTile(movie: movie);
        },
      ),
    );
  }
}
