import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          foregroundColor: whiteColor,
          title: const Text("Flutter Card"),
        ),
        body: Column(
          children: [
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(26),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Row(
                          children: [
                            Icon(Icons.phone, color: mainColor),
                            SizedBox(width: 8), // Add spacing between icon and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tell',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('+2547000000',
                                    style: TextStyle(color: greyColor)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Add spacing between rows
            
                        // Email information
                        const Row(
                          children: [
                            Icon(Icons.email, color: mainColor),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('sqcodes@gmail.com',
                                    style: TextStyle(color: greyColor)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Add spacing between rows
            
                        // Website information
                        Row(
                          children: [
                            const Icon(Icons.web, color: mainColor),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Website',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                GestureDetector(
                                  onTap: () {
                                    // Handle website tap
                                    // You can use url_launcher package to launch the URL
                                  },
                                  child: const Text(
                                    'sqcodes.com',
                                    style: TextStyle(color: greyColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Add spacing between rows
            
                        // Address information
                        const Row(
                          children: [
                            Icon(Icons.location_on, color: mainColor),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Address',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Nairobi, Kenya',
                                    style: TextStyle(color: greyColor)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/paul.jpg'),
                        ),
                        const SizedBox(height: 20),
                        Text('Paul Magadi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Text('Software Developer ',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge),
                        const SizedBox(height: 20),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'Facebook',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {},
                color: Colors.black,
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {},
                color: Colors.black,
                tooltip: 'GitHub',
              ),
            ],
            )
          ],
          
        ),
      ),
    );
  }
}
