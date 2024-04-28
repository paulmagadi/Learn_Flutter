import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:  Row(
            children: [
               const Text(
            "My Profile",
            style: TextStyle(fontSize: 28),
          ),
               Column(
                children: [
                  SizedBox(
                    // Here I use SizeBox instead of Container
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/paul.jpg'),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Magadi",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/paul.jpg'),
          ),
          const SizedBox(height: 20),
          Text('Paul Magadi',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
              'I love teaching students and helping them to achieve their dreams.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Birth Date'),
                  subtitle: Text('1999'),
                ),
                ListTile(
                    leading: const Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('sqcodes.com'),
                    onTap: () {}),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('sqcodes@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text('Nairobi, Kenya'),
                ),
              ],
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
                onPressed: () {
                  
                },
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
          ),
        ],
      ),
    );
  }
}
