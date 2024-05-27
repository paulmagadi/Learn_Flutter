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
  int _selectedIndex = 2;

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
      appBar: SearchAppBar(title: 'Runtime Cakes'),
      drawer: drawer(context),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.00,
        items: [
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.category_outlined,
                size: 20,
              ),
              label: "Category"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.local_offer_outlined,
                size: 20,
              ),
              label: "Deals"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.home_outlined,
                size: 20,
              ),
              label: "Home"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 20,
              ),
              label: "Cart"),
          CurvedNavigationBarItem(
              icon: const Icon(
                Icons.person_2_outlined,
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
