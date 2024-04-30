import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

_launchURLBrowser() async {
  var url = Uri.parse("https://www.whatsapp.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.whatsapp.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                const Text(
                  'Flutter Urls',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLBrowser,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  // textColor: Colors.black,
                  // padding: const EdgeInsets.all(5.0),
                  child: const Text('Open in Browser'),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLApp,
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(5)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.black))),
                  // textColor: Colors.black,
                  // padding: const EdgeInsets.all(5.0),
                  child: const Text('Open in App'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Flutter Urls'),
      backgroundColor: Colors.green,
    );
  }
}
