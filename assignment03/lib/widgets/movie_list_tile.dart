/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie List Tile
// lib/widgets/movie_list_tile.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MovieListTile extends StatelessWidget {
  final Movie movie;

  const MovieListTile({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        leading: Image.asset(
          movie.posterUrl,
          fit: BoxFit.cover,
          width: 50,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.movie, size: 50); // Placeholder icon
          },
        ),
        title: Text(
          movie.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${movie.genre} (${movie.year})'),
        trailing: IconButton(
          icon: Icon(
            movie.isFavorite ? Icons.star : Icons.star_border,
            color: Colors.amber,
          ),
          onPressed: () {
            // Functionality to be added later
          },
        ),
        onTap: () {
          // Navigation to be added later
        },
      ),
    );
  }
}
