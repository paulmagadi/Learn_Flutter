import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      routes: {
        '/about': (context) => AboutPage(), //Route to About Page/screen
        '/help': (context) => HelpPage(), //Route to Help Page/screen
        '/calendar': (context) =>
            CalendarPage(), //Route to Calendar Page/screen
      }, //Home view
    );
  }
}


