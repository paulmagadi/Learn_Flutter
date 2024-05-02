import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  BottomNavigationExampleState createState() =>
      BottomNavigationExampleState();
}

class BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
