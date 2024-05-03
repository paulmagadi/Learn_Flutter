import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// Define separate widgets for each screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Screen'));
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Message Screen'));
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Camera Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Screen',
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define a list of screens
  final List<Widget> _screens = [
    HomeScreen(),
    MessageScreen(),
    CameraScreen(),
    ProfileScreen(),
  ];

  // Define a state variable to keep track of the selected index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Curved Bottom Navigation Bar")),
        ),
        // Set the body according to the selected index
        body: _screens[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blue,
          buttonBackgroundColor: const Color.fromARGB(255, 66, 204, 231),
          height: 60,
          items: const <Widget>[
            Icon(Icons.menu, size: 30),
            Icon(Icons.message, size: 30),
            Icon(Icons.camera, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            // Update the state when an item is tapped
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
