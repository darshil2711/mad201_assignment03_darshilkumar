/// MAD201-01 Assignment 3
/// Darshilkumar Karkar - A00203357
/// Movie Detail Screen

// lib/screens/movie_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart'; // We need our Movie blueprint

// This is a 'StatelessWidget' because it just displays
// data it's given. It doesn't need to remember anything
// or change over time.
class MovieDetailScreen extends StatelessWidget {
  // This 'final' variable will hold the movie object
  // that was passed to this screen from the previous page.
  final Movie movie;

  // The constructor 'requires' a 'movie' object.
  // This is how the HomeScreen tells this screen which movie to show.
  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // We start with a Scaffold, which gives us the app bar
    // and a body to put our content in.
    return Scaffold(
      // The app bar title is dynamic! It just shows the title
      // of the movie we were given.
      appBar: AppBar(title: Text(movie.title)),

      // We wrap our content in a 'SingleChildScrollView'.
      // This is a great trick to make the page scrollable,
      // just in case the movie description is really long
      // and doesn't fit on a small phone screen.
      body: SingleChildScrollView(
        // 'padding' gives us some nice breathing room around the content
        padding: const EdgeInsets.all(16.0),

        // We use a 'Column' to stack all our widgets
        // vertically (poster, then title, then description, etc.)
        child: Column(
          // This makes all the text in the Column
          // line up on the left side (start).
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We 'Center' the image to make it look nice
            Center(
              child: Image.asset(
                movie.imagePath, // Get the image path from our movie object
                height: 300, // Give it a fixed height
                fit: BoxFit.cover, // Make sure the image covers the area nicely
                // This 'errorBuilder' is our safety net.
                // If the image path is wrong or the file is missing,
                // it will show this grey box with an icon instead of crashing.
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 300,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.movie,
                      size: 100,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),

            // 'SizedBox' is the simplest way to add some empty space
            const SizedBox(height: 20),

            // --- Movie Title ---
            Text(
              movie.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8), // A smaller space
            // --- Genre and Year ---
            Text(
              '${movie.genre} | ${movie.year}', // We combine two properties here
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic, // Make it italic
                color: Colors.grey, // A softer color
              ),
            ),
            const SizedBox(height: 24), // A bigger space before the description
            // --- Description Header ---
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // --- Full Description ---
            Text(
              movie.description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5, // 'height' adds extra spacing between lines
              ),
            ),
          ],
        ),
      ),
    );
  }
}
