import 'package:flutter/material.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          radius: 60,
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
          )
        ],
      ),
    );
  }
}
