/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie Model
/// // lib/models/movie_model.dart
class Movie {
  final String id;
  final String title;
  final String genre;
  final int year;
  final String description;
  final String imagePath;
  bool isFavorite;

  Movie({
    required this.id,
    required this.title,
    required this.genre,
    required this.year,
    required this.description,
    required this.imagePath,
    this.isFavorite = false,
  });
}
