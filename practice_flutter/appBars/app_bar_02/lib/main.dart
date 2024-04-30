import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 99, 61),
          title: const Text("App Bar"),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
