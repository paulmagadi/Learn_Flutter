import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            //card
            Card(
              elevation: 4.0,
              margin: largePadding,
              child: Padding(
                padding: defaultPadding,
                // The entire card is a row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Create two columns.
                    // First column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //Create a row for each item
                        const Row(
                          //The row wil have 3 children(icon, space and texts)
                          children: [
                            Icon(Icons.phone, color: mainColor),
                            SizedBox(
                                width: 8), // Add spacing between icon and text
                            // The texts will be in a column with children. 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tell',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('+2547000000',
                                    style: TextStyle(color: greyColor)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Add spacing between rows
//REPEATE THE ABOVE FOR ALL THE ROWS
                        // Email information
                        const Row(
                          children: [
                            Icon(Icons.email, color: mainColor),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                        // Container with a circular border and a CircleAvatar as child
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: mainColor, // Border color
                              width: 4, // Border width
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage('images/paul.jpg'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Paul Magadi',
                          style: boldStyle,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Software Developer',
                          textAlign: TextAlign.center,
                          style: bodyStyle,
                        ),
                        // const SizedBox(height: 20),
                      ],
                    ),
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
                  color: blackColor,
                  tooltip: 'Facebook',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  onPressed: () {},
                  color: blackColor,
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  onPressed: () {},
                  color: blackColor,
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
