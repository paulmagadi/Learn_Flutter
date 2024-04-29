import 'package:flutter/material.dart';
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
        body: Card(
          elevation: 8.0,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Text("Hello world"),
                    // Text("My Name is paul"),

                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(width: 8), // Add spacing between icon and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tell',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('+2547000000',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    // const ListTile(
                    //   leading: Icon(Icons.email),
                    //   title: Text('Email'),
                    //   subtitle: Text('sqcodes@gmail.com'),
                    // ),
                    // ListTile(
                    //     leading: const Icon(Icons.web),
                    //     title: const Text('Website'),
                    //     subtitle: const Text('sqcodes.com'),
                    //     onTap: () {}),
                    // const ListTile(
                    //   leading: Icon(Icons.location_on),
                    //   title: Text('Address'),
                    //   subtitle: Text('Nairobi, Kenya'),
                    // ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('images/paul.jpg'),
                    ),
                    const SizedBox(height: 5),
                    Text('Paul Magadi',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
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
      ),
    );
  }
}
