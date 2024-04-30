import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Column(
        children: [],
      ),
    );
  }
}

_appBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 12, 152, 126),
    foregroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.dark_mode_rounded,
        size: 20,
      ),
    ),
    // title: const Text("App Bar"),
    actions: const [
      Text("Home"),
      SizedBox(
        width: 10,
      ),
      Text("About"),
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(
        width: 20,
      )
    ],
  );
}
