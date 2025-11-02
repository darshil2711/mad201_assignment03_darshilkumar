/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie Data
// lib/data/movie_data.dart
import '../models/movie_model.dart';

final List<Movie> mockMovies = [
  Movie(
    id: 'm1',
    title: 'Inception',
    genre: 'Sci-Fi',
    year: 2010,
    description:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
    posterUrl: 'assets/images/inception.jpg', // Make sure you have this image
  ),
  Movie(
    id: 'm2',
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    description:
        'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
    posterUrl: 'assets/images/dark_knight.jpg', // Make sure you have this image
  ),
  Movie(
    id: 'm3',
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    description:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
    posterUrl:
        'assets/images/interstellar.jpg', // Make sure you have this image
  ),
];
