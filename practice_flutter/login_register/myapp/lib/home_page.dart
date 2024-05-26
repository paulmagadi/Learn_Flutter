import 'package:flutter/material.dart';
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
        const HomeScreen(),
        const CategoryScreen(),
        const ProfileScreen(),
        const CartScreen(),
        const DealsScreen(),
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
            body: _pages[_selectedIndex],
            bottomNavigationBar: CurvedNavigationBar(
                items: [
                    CurvedNavigationBarItem(icon: const Icon(Icons.home), label: "Home"),
                    CurvedNavigationBarItem(icon: const Icon(Icons.category), label: "Category"),
                    CurvedNavigationBarItem(icon: const Icon(Icons.local_offer), label: "Deals"),
                    CurvedNavigationBarItem(icon: const Icon(Icons.shopping_cart), label: "Cart"),
                    CurvedNavigationBarItem(icon: const Icon(Icons.person), label: "Account"),
                ],
                index: _selectedIndex,
                onTap: _onItemTapped,
            ),
        );
    }
}
