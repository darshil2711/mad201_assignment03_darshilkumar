/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie List Tile (Our Reusable Row)

// lib/widgets/movie_list_tile.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart'; // We need the Movie blueprint
import '../screens/movie_detail_screen.dart'; // To navigate to the details page

// This is our custom, reusable widget for showing a single movie
// in a list. This is great because we can use it on the
// HomeScreen AND the FavoritesScreen without writing the code twice.
class MovieListTile extends StatelessWidget {
  // It needs the specific 'movie' object it's supposed to display
  final Movie movie;

  // It also needs to be given the function to call when the star icon is tapped
  final Function(Movie) onToggleFavorite; // Accept the function

  // The constructor requires both the movie and the function
  const MovieListTile({
    super.key,
    required this.movie,
    required this.onToggleFavorite, // Add to constructor
  });

  @override
  Widget build(BuildContext context) {
    // We wrap our tile in a 'Card' to give it that nice
    // raised look with a slight shadow.
    return Card(
      // Add a little margin so the cards don't touch each other
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),

      // 'ListTile' is the perfect widget for this. It gives us
      // standard slots for a 'leading' icon, 'title', 'subtitle',
      // and 'trailing' icon.
      child: ListTile(
        // --- 'leading' (the widget on the far left) ---
        leading: Image.asset(
          movie.imagePath, // Get the image path from our movie object
          fit: BoxFit.cover, // Make sure the image covers its little box
          width: 50, // Give it a fixed width
          // Our safety net! If the image fails to load,
          // show this placeholder icon instead of an error.
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.movie, size: 50);
          },
        ),

        // --- 'title' (the main text) ---
        title: Text(
          movie.title,
          // Make the title bold so it stands out
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        // --- 'subtitle' (the smaller text below the title) ---
        subtitle: Text(
          '${movie.genre} (${movie.year})',
        ), // Combine two properties
        // --- 'trailing' (the widget on the far right) ---
        trailing: IconButton(
          // The icon itself is dynamic!
          icon: Icon(
            // This is a "ternary operator" (a quick if-else).
            // IF movie.isFavorite is true ? show 'star' : ELSE show 'star_border'.
            movie.isFavorite ? Icons.star : Icons.star_border, // Dynamic icon
            color: Colors.amber, // Give it a nice gold color
          ),

          // This is what happens when the button is actually pressed
          onPressed: () {
            // We just call the function that was passed in from the parent
            // (MainScreen) and give it the movie that was tapped.
            onToggleFavorite(movie); // Call the function
          },
        ),

        // 'onTap' is the action for tapping *anywhere* on the tile
        // (except the icon button).
        onTap: () {
          // This is how we navigate to a new page
          Navigator.push(
            context,
            MaterialPageRoute(
              // We tell it to build a new 'MovieDetailScreen'
              // and we pass along the 'movie' for this specific tile.
              builder: (context) => MovieDetailScreen(movie: movie),
            ),
          );
        },
      ),
    );
  }
}
