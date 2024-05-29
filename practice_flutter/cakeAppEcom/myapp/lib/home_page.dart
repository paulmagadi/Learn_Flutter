
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'drawer.dart';
import 'screens/cart.dart';
import 'screens/category.dart';
import 'screens/deals.dart';
import 'screens/home.dart';
import 'screens/profile.dart';
import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import '../models/cart.dart';

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
     CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 243, 243),
      appBar: AppBar(
        title: Text('Runtime Cakes'),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '${cart.itemCount}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: drawer(context),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.blue,
        unSelectedColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Color.fromARGB(255, 224, 223, 223),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        enableLineIndicator: true,
        lineIndicatorWidth: 2,
        indicatorType: IndicatorType.bottom,
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
