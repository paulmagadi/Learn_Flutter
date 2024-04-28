import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: appBar(),
        body: const ProfilePage(),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 166, 99),
        foregroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Profile",
              style: TextStyle(fontSize: 28),
            ),
            Text(
              "Paul Magadi",
              style: TextStyle(fontSize: 23),
            ),
          ],
        ));
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
          Text('I am a Full-Stack Software Developer with...',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 8.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Tell'),
                  subtitle: Text('+2547000000'),
                ),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('sqcodes@gmail.com'),
                ),
                ListTile(
                    leading: const Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('sqcodes.com'),
                    onTap: () {}),
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
          ),
        ],
      ),
    );
  }
}
