LOCAL STORAGE IN FLUTTER
Introduction
Local storage is like the memory of your app. Think about it:

📝 You have a to-do app.
❌ Every time you close the app, your tasks are gone.
🎩 Local storage is solution to this problem.
Why Do We Need Local Storage?
Wondering why local storage is a big deal? Here’s why:

Persistence: Keep data even after the app is closed.
Offline Access: Users can access their data without internet.
Performance: Data on the device means faster access.
User Experience: Apps that remember preferences = Happy users!
3. Flutter’s Local Storage Options
There are different ways to store data locally in Flutter. Here are the most popular ones:

Option	Description
SharedPreferences	Great for small data like settings. Like a tiny storage box.
Flutter Secure Storage	For storing sensitive data like passwords. Encrypted & secure.
Hive	A blend of simplicity & performance. Think of it as Flutter’s magic.
SQLite	A lightweight database. Ideal when data needs structure.
When you’re starting out, it’s best to start with SharedPreferences. It’s simple and easy to use. In upcoming sections, you will learn about each of these options in detail.



SHARED PREFERENCES IN FLUTTER
Shared Preferences in Flutter
Shared preferences is a simple key-value pair storage feature in Flutter that’s frequently used to permanently store small amounts of basic data. It works well for storing preferences, settings, and little quantities of user-specific information.

Steps To Use Shared Preferences in Flutter
Follow the below steps to use shared preferences in flutter.

Add shared_preferences package in your pubspec.yaml file.
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2
Step 1: Import Package
To use shared preferences in flutter, you need to import the shared_preferences package. You can import the shared_preferences package in lib/main.dart file. Add the following code in lib/main.dart file.

import 'package:shared_preferences/shared_preferences.dart';
Step 2: Create a SharedPreferences Helper Class
In this step, you will create a helper class called shared_preferences_helper.dart. This class will be used to store and retrieve data from shared preferences. You can create this class in lib/helper/shared_preferences_helper.dart file. Add the following code in lib/helper/shared_preferences_helper.dart file.

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  // To set a string value
  static Future<bool> setString(String key, String value) {
    return _sharedPreferences!.setString(key, value);
  }

  // To get a string value
  static String? getString(String key) {
    return _sharedPreferences!.getString(key);
  }

  // Similarly, you can create methods for other data types.
}
Step 3: Initialize SharedPreferences
Before using shared preferences, initialize it as a priority in the main() method. You can initialize shared preferences in lib/main.dart file. Add the following code in lib/main.dart file.


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  runApp(const MainApp());
}
Step 4: Set and Get Values
Now you can set and get values from shared preferences. You can set and get values from shared preferences as shown below.

// To set a string value
await SharedPreferencesHelper.setString('username', 'FlutterFan123');

// To get a string value
String? username = SharedPreferencesHelper.getString('username');
Example 1: Light and Dark Theme App
In this example below, you will build a light and dark theme app by using shared preferences. You will use shared preferences to store the theme value and retrieve it when the app is opened.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

// initialize the theme from shared preferences
  @override
  void initState() {
    super.initState();
    _isDarkTheme = SharedPreferencesHelper.getBool("isDarkTheme") ?? false;
  }

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
      SharedPreferencesHelper.setBool("isDarkTheme", _isDarkTheme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Switcher',
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text('Theme Switcher with SharedPreferences')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Click the button below to toggle theme:'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleTheme,
                child: Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SharedPreferencesHelper {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  // To set a bool value
  static Future<bool> setBool(String key, bool value) {
    return _sharedPreferences!.setBool(key, value);
  }

  // To get a bool value
  static bool? getBool(String key) {
    return _sharedPreferences!.getBool(key);
  }
}
 Info
Note: Close and Reopen the app to see the changes.

QUESTIONS FOR PRACTICE 7
Flutter Local Storage Practice Questions
Build a settings page in a Flutter app that saves user preferences using Shared Preferences. Include options like theme color and notification settings.
Develop a todo list application where tasks are stored and retrieved from local storage, ensuring data persistence even after the app restarts.
Design a user profile screen where users can enter and save their information (like name, email, and profile picture). Use local storage to save the data.
Create an app for tracking game scores that stores the high scores locally using Shared Preferences, allowing users to view their best scores over time.
Build an app that allows users to select their preferred language for the app interface, and save this preference using Shared Preferences.
Develop a Flutter app with the functionality to switch between light and dark themes, saving the user’s preference in Shared Preferences.
Build a simple shopping app where the user’s cart items are saved in local storage, ensuring the cart remains intact even if the app is closed and reopened
Design an app where users can create notes and categorize them. Use local storage to save notes and their respective categories.
Implement an onboarding process for first-time users and use Shared Preferences to store a flag indicating that the user has completed the onboarding.
Build a fitness app that tracks daily steps or exercise routines and saves the data locally, allowing users to view their progress over time.