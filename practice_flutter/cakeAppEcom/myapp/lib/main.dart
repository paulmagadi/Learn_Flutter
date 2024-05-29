import 'package:flutter/material.dart';
import 'home_page.dart';
import 'screens/static/about.dart';
import 'screens/static/contact.dart';
import 'screens/static/help.dart';

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
        '/about': (context) => AboutPage(), 
        '/help': (context) => HelpPage(), 
        '/contact': (context) => ContactUsPage(), 
      }, //Home view
    );
  }
}


