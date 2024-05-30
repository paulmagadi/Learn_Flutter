import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'models/cart.dart';
import 'screens/static/about.dart';
import 'screens/static/contact.dart';
import 'screens/static/help.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyB8SPpSUlbLRx3EKjpddysoexLlgAebbOk", appId: "1:1028750882492:web:c94de2714fdd84bc5742b9", messagingSenderId: "1028750882492", projectId: "ecommerce-4a53a"));
  }


  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Cart(),
      child: MaterialApp(
        title: 'E-commerce App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: HomePage(),
        
        routes: {
          '/about': (context) => AboutPage(),
          '/help': (context) => HelpPage(),
          '/contact': (context) => ContactUsPage(),
        }, //Home view
      ),
    );
  }
}
