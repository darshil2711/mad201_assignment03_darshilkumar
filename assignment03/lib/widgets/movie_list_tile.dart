/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie List Tile
// lib/widgets/movie_list_tile.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../screens/movie_detail_screen.dart';

class MovieListTile extends StatelessWidget {
  final Movie movie;
  final Function(Movie) onToggleFavorite; // Accept the function

  const MovieListTile({
    super.key,
    required this.movie,
    required this.onToggleFavorite, // Add to constructor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        leading: Image.asset(
          movie.imagePath,
          fit: BoxFit.cover,
          width: 50,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.movie, size: 50);
          },
        ),
        title: Text(
          movie.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${movie.genre} (${movie.year})'),
        trailing: IconButton(
          icon: Icon(
            movie.isFavorite ? Icons.star : Icons.star_border, // Dynamic icon
            color: Colors.amber,
          ),
          onPressed: () {
            onToggleFavorite(movie); // Call the function
          },
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailScreen(movie: movie),
            ),
          );
        },
      ),
    );
  }
}
