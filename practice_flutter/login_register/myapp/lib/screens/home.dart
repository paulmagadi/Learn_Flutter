import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
  height: 100.0, // Height of the container
  width: 100.0, // Width of the container
  color: Colors.blue, // Background color
  alignment: Alignment.center, // Align the child to the center
  child: Text('Hello World'), // Child widget
  padding: EdgeInsets.all(10.0), // Padding inside the container
  margin: EdgeInsets.all(20.0), // Margin outside the container
)
        );
      
  }
}