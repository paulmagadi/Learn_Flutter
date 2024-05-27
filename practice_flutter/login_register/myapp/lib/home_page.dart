import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'appbar.dart';

import 'drawer.dart';
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
              icon: const Icon(
                Icons.category,
                size: 20,
              ),
              label: "Category"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.local_offer,
                size: 20,
              ),
              label: "Deals"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              label: "Home"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart,
                size: 20,
              ),
              label: "Cart"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.person,
                size: 20,
              ),
              label: "Account"),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
