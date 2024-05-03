import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(("Curved Bottom Navigation Bar"))),
        ),
        body: Container(
          color:const Color.fromARGB(255, 255, 255, 255),
          child: const Center(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          color: Colors.blue,
          buttonBackgroundColor: const Color.fromARGB(255, 66, 204, 231),
          height: 60,
          animationDuration: Durations.medium4,
          items: const <Widget>[
            Icon(Icons.menu, size: 30),
            Icon(Icons.message, size: 30),
            Icon(Icons.camera, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      ),
    );
  }
}
