import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const SafeArea(
          child: Column(
        children: [],
      )),
      bottomNavigationBar: NavigationBar(
        height: 60,
        elevation: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.store), label: "Store"),
          NavigationDestination(icon: Icon(Icons.category), label: "Category"),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Cart"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        // backgroundColor: Colors.amber,
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.amber[100],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      actions: const [
        Icon(Icons.menu),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
