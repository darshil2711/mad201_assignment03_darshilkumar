/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie Model

// lib/models/movie_model.dart

// This is our 'Movie' blueprint, or "model."
// It defines all the pieces of data that make up a single movie.
// Think of it as a custom data type.
class Movie {
  // We use 'final' for properties that shouldn't change
  // after the movie object is created.
  final String id;
  final String title;
  final String genre;
  final int year;
  final String description;
  final String imagePath; // This is just the text path to our asset image

  // This one ISN'T 'final' because we want to be able to
  // tap a button and change it from 'false' to 'true' and back.
  bool isFavorite;

  // This is the "constructor." It's the function we call
  // to actually create a new Movie object.
  Movie({
    // 'required' means we MUST provide these values when we
    // make a new Movie. The app won't compile if we forget one.
    required this.id,
    required this.title,
    required this.genre,
    required this.year,
    required this.description,
    required this.imagePath,

    // We give 'isFavorite' a default value.
    // This way, if we don't specify it, it'll just
    // automatically be 'false' to start.
    this.isFavorite = false,
  });
}
