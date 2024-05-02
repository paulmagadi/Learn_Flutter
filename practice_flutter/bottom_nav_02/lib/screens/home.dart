import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Moved _selectedIndex inside the class

  // Define _onItemTapped function
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation Bar"),
        ),
        body: const Column(
          children: [],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: const Color.fromARGB(255, 22, 147, 154),
          elevation: 5,
          iconSize: 20,
          mouseCursor: SystemMouseCursors.grab,
          selectedFontSize: 10,
          selectedIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 0, 0),
            size: 30,
          ),
          selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 157, 114, 101),
          ),
          unselectedItemColor: const Color.fromARGB(255, 219, 145, 123),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Call",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
