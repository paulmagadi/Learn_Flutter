import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './constants/constants.dart';

// Define separate widgets for each screen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Menu Screen',
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Message Screen'));
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Camera Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shadowColor: mainColor,
              surfaceTintColor: tintColor,
              // borderOnForeground: false,
              margin: const EdgeInsets.all(20),
              elevation: 4.0,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //left column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //first child of left column
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: mainColor,
                                icon: const Icon(Icons.call)),
                            const SizedBox(width: 4),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tell",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("+254700000001",
                                    style: TextStyle(
                                      color: mainColor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        //second child of left column
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: mainColor,
                                icon: const Icon(Icons.email)),
                            const SizedBox(width: 4),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("sqcodes@gmail.com",
                                    style: TextStyle(
                                      color: mainColor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        //Third child of left column
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: mainColor,
                                icon: const Icon(Icons.web)),
                            const SizedBox(width: 4),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Website",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("sqcodes.com",
                                    style: TextStyle(
                                      color: mainColor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        //fourth child of left column
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: mainColor,
                                icon: const Icon(Icons.location_on)),
                            const SizedBox(width: 4),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Address",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Nairobi, Kenya",
                                    style: TextStyle(
                                      color: mainColor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        // const SizedBox(height: 20),
                      ],
                    ),
                    //right column
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: mainColor,
                              width: 4,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("images/paul.jpg"),
                            radius: 65,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Paul Magadi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Software Developer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: mainColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Column(
              children: [
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In libero metus, vestibulum ac pharetra a, interdum sit amet odio. Vivamus id volutpat est, quis posuere urna. Donec cursus"
                    // overflow: TextOverflow.clip, // Add this to control text overflow
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define a list of screens
  final List<Widget> _screens = [
    HomeScreen(),
    MessageScreen(),
    CameraScreen(),
    ProfileScreen(),
  ];

  // Define a state variable to keep track of the selected index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Curved Bottom Navigation Bar")),
        ),
        // Set the body according to the selected index
        body: _screens[_selectedIndex],
        backgroundColor: bgColor,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: bgColor,
          color: whiteColor,
          buttonBackgroundColor: whiteColor,
          height: 60,
          // animationCurve: Curves.easeOut,
          // animationDuration: const Duration(microseconds: 10),
          items: const <Widget>[
            Icon(
              Icons.menu,
              size: 30,
              color: mainColor,
              semanticLabel: "Menu",
            ),
            Icon(
              Icons.message,
              size: 30,
              color: mainColor,
              semanticLabel: "Message",
            ),
            Icon(
              Icons.camera,
              size: 30,
              color: mainColor,
              semanticLabel: "Camera",
            ),
            Icon(
              Icons.person,
              size: 30,
              color: mainColor,
              semanticLabel: "Profile",
            ),
          ],
          onTap: (index) {
            // Update the state when an item is tapped
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
