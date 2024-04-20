// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Paul Magadi'),
//         ),
//         body: const Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     ),
//   );
// }

// Imports the core functionality for building user interfaces from the Flutter package.
import 'package:flutter/material.dart';

// Defines the starting point for the Flutter application.
void main() {
  // Runs the app with a MaterialApp widget as the root of the widget tree.
  // MaterialApp manages high-level aspects of the app, like themes and navigation.
  runApp(MaterialApp(
    title: 'My First App',
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
          children: <Widget>[
            // Empty container to occupy some space above "Hello World"
            Container(height: 50.0),
            Text(
              'Hello World!, This is my FIRST FLUTTER APP',
              style: TextStyle(fontSize: 24.0), // Set font size to 24.0
            ),
            // Empty container to occupy some space below "Hello World"
            Container(height: 50.0),
            // ElevatedButton with a button press handler
            ElevatedButton(
              onPressed: () {
                // Handle button press event (e.g., print a message)
                print('Button pressed!');
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    ),
  ));
}