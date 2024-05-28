import 'package:flutter/material.dart';
import 'appbar.dart';

import 'drawer.dart';
import 'screens/cart.dart';
import 'screens/category.dart';
import 'screens/deals.dart';
import 'screens/home.dart';
import 'screens/profile.dart';

import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    CategoriesScreen(),
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
      
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.blue,
        unSelectedColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Color.fromARGB(255, 224, 223, 223),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        enableLineIndicator: true,
        lineIndicatorWidth: 2,
        indicatorType: IndicatorType.bottom,
        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Categories',
            icon: Icons.category_outlined,
          ),
          CustomBottomBarItems(
              label: 'Deals', icon: Icons.local_offer_outlined),
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Cart',
            icon: Icons.shopping_cart_outlined,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.person_2_outlined,
          ),
        ],
      ),
    );
  }
}
