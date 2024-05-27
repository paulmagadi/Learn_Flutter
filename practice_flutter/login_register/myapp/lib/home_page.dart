import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'appbar.dart';

import 'screens/cart.dart';
import 'screens/category.dart';
import 'screens/deals.dart';
import 'screens/home.dart';
import 'screens/profile.dart';

import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const CategoryScreen(),
    const DealsScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(title: 'GreenFields'),
      drawer: drawer(context),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.00,
          items: [
          CurvedNavigationBarItem(
              icon: const Icon(Icons.category, size: 20,), label: "Category"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.local_offer, size: 20,), label: "Deals"),
          CurvedNavigationBarItem(icon: const Icon(Icons.home, size: 20,), label: "Home"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.shopping_cart, size: 20,), label: "Cart"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.person, size: 20,), label: "Account"),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Drawer drawer(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            currentAccountPicture: CircleAvatar(
                // backgroundImage: AssetImage('assets/images/paul.jpg'),
                ),
            accountName: Text('Paul SQ Magadi'),
            accountEmail: Text('paul.learner@plp.com'),
          ),
          // List Tile inside the Drawer
          ListTile(
            title: const Text('Contact Us'),
            leading: const Icon(
              Icons.message,
              color: Colors.blue,
            ),
            onTap: () {
              // Navigate to the About page
              Navigator.pushNamed(context, '/contact');
            },
          ),

          ListTile(
            title: const Text('About'),
            leading: const Icon(
              Icons.info,
              color: Colors.blue,
            ),
            onTap: () {
              // Navigate to the About page
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text('Help'),
            leading: const Icon(
              Icons.help_center,
              color: Colors.blue,
            ),
            onTap: () {
              // Navigate to the Help page
              Navigator.pushNamed(context, '/help');
            },
          ),
          
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(
              Icons.logout,
              color: Colors.blue,
            ),
            onTap: () {
              // Handle logout action
              // Add your logout logic here, e.g., sign out the user, navigate to the login screen
              // Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
