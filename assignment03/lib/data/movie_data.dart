/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie Data

// lib/data/movie_data.dart

// This is our "fake database" file.
// Instead of fetching data from the internet, we're just keeping a list
// of movies right here in the app to use for testing.

// We need to import the 'Movie' model so this file knows
// what a "Movie" object looks like.
import '../models/movie_model.dart';

// 'final' just means this list can't be replaced with a *different* list later.
// It's our one and only source of movie data for now.
final List<Movie> mockMovies = [
  // Let's start with some modern classics...
  Movie(
    id: 'm1',
    title: 'Inception',
    genre: 'Sci-Fi',
    year: 2010,
    description:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
    imagePath: 'assets/images/inception.jpg', // Make sure you have this image
  ),
  Movie(
    id: 'm2',
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    description:
        'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
    imagePath: 'assets/images/dark_knight.jpg', // Make sure you have this image
  ),
  Movie(
    id: 'm3',
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    description:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
    imagePath:
        'assets/images/interstellar.jpg', // Make sure you have this image
  ),
  Movie(
    id: 'm4',
    title: 'The Matrix',
    genre: 'Sci-Fi',
    year: 1999,
    description:
        'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
    imagePath: 'assets/images/matrix.jpg',
  ),

  // And now for some 90s gold!
  Movie(
    id: 'm5',
    title: 'Pulp Fiction',
    genre: 'Crime',
    year: 1994,
    description:
        'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
    imagePath:
        'assets/images/pulp_fiction.jpg', // Don't forget to add this image!
  ),
  Movie(
    id: 'm6',
    title: 'Forrest Gump',
    genre: 'Drama',
    year: 1994,
    description:
        'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75.',
    imagePath: 'assets/images/forrest_gump.jpg', // And this one too!
  ),
  Movie(
    id: 'm7',
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    year: 1994,
    description:
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
    imagePath: 'assets/images/shawshank_redemption.jpg',
  ),

  // Gotta have the all-time greats
  Movie(
    id: 'm8',
    title: 'The Godfather',
    genre: 'Crime',
    year: 1972,
    description:
        'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
    imagePath: 'assets/images/godfather.jpg',
  ),
  Movie(
    id: 'm9',
    title: 'Fight Club',
    genre: 'Drama',
    year: 1999,
    description:
        'An insomnIac office worker and a devil-may-care soap maker form an underground fight club that evolves into something much, much more.',
    imagePath: 'assets/images/fight_club.jpg',
  ),

  // And rounding it out with some more recent hits
  Movie(
    id: 'm10',
    title: 'Parasite',
    genre: 'Thriller',
    year: 2019,
    description:
        'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.',
    imagePath: 'assets/images/parasite.jpg',
  ),
  Movie(
    id: 'm11',
    title: 'Gladiator',
    genre: 'Action',
    year: 2000,
    description:
        'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
    imagePath: 'assets/images/gladiator.jpg',
  ),
];
