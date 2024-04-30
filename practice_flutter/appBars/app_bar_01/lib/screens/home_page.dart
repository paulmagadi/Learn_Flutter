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
    leading: GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.dark_mode_rounded,
        size: 20,
      ),
    ),
    actions: [
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}
