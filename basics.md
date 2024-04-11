

Using Dart and Flutter Together
If you’re actively learning Flutter, learning Dart programming as well would be a great skill to add to your toolset. Leveraging Dart and Flutter together enables developers to build high-quality, natively compiled applications for mobile, web, and desktop from a single codebase, which can save you development time and improve your app’s performance. Learn how Pieces, an AI-enabled productivity tool across macOS, Windows and Linux with plugins across the entire development workflow, used these frameworks to build their products in their Dart and Flutter case study.
What are the Prerequisites to Learn Flutter?
You should have basic knowledge of a Dart programming language. If you don't know Dart, then you can learn it from here.



What is Flutter?
Flutter is a free tool developed by Google for creating mobile, web, and desktop apps with single code. It uses Dart programming language to create apps. Flutter quickly gained popularity because of easy and fast development process.

Why You Should Learn Flutter?
Flutter offers a many advantages for developers and businesses like:

Single Codebase: You can use the same code to make apps for android, iOS, web, and desktop.
Beautiful UI: Flutter has special things called widgets, that help you to create beautiful user interfaces.
Fast Development: Flutter has a hot reload feature that allows you to see changes in your app in real time. This makes the development process faster.
Efficient Testing: With Flutter, you can easily test your app on different devices and platforms at the same time.
Ready Made Packages: You can get thousands of ready made packages to enhance your app’s functionality.
Some Popular Apps Built With Flutter
Here are some popular apps made with Flutter:

Google Earth,
Youtube Create,
Google Pay,
Alibaba,
BMW,
Ebay,
Google Ads, etc.
 Info
Note: As of May 2023, there are more than 1 millions apps built with flutter. This shows the popularity of flutter in such a short time.

Flutter History
Here is a timeline of Flutter’s history:

📅Date	🎉Event
2015	Google started Flutter as an open-source project.
May 12, 2017	First alpha release of Flutter.
Dec 4, 2018	Flutter 1.0 (first stable version) launches.
Mar 3, 2021	Flutter 2.0 releases with web & desktop support.
May 5, 2022	Flutter 3.0 releases with advanced features.
Feb 15, 2024	Flutter 3.19 releases with more advanced features.
Key Points
Flutter allows you to build, test, and publish mobile, web, desktop apps from a single codebase.
It uses Dart programming language, which helps you to build apps fast for many platforms.
It has lots of widgets to build beautiful user interfaces.
There are many ready made packages available for Flutter.
It is backed by Google and trusted by well-known brands worldwide.


Flutter Installation
There are multiple ways to install a flutter on your system. You can install Flutter on Windows, Mac, and Linux or run it from the browser. In this tutorial, you will learn easiest way to install a flutter on your system. If you got stuck somewhere, you can watch the video below to be more clear.

Requirements
Flutter SDK,
VS code or other editors like Intellij [We will use VS Code here].
Git [For Version Control].
Anrdoid Studio.
Flutter Windows Installation
Follow the below instructions to install a flutter on the windows operating system.

Steps:
Download Flutter sdk from here.
Extract or copy Flutter sdk to your C drive.
Setup path C:\flutter\bin to your environment variable. Watch the video below to be more clear.
Open the command prompt and type flutter –version to check it.
flutter --version
Install VS Code from here and add Dart and Flutter Extension.
Install Android Studio from here and add Android sdk.
Install Git from here for version control and to keep track of your code changes.
Open the command prompt and type flutter doctor to check and diagnose the setup of your flutter development environment.
 flutter doctor
Flutter Windows Installation Video
Watch this video to easily install a flutter on your windows operating system.


Useful Flutter Commands
Here you will find a list of useful Flutter commands that will make your app development process easier and faster.

1. Setting Up
Before diving into development, it’s essential to ensure that Flutter is set up correctly on your machine:

flutter doctor
This command checks your environment and displays a report of the status of your Flutter installation. It will also notify you of any dependencies you still need to install.

2. Creating a New Project
To start a new Flutter project you need to run flutter create command. This command will create a new Flutter project in the specified directory.

flutter create my_app
This command sets up a new Flutter project called my_app.

3. Running the App
After creating a project, navigate to the project directory and use this command to run the Flutter app in the default device (emulator/simulator).

flutter run
4. Checking Installed Devices
To check the list of all connected devices, use the following command:

flutter devices
5. Building Apk For Android
To build an APK file for Android, use:

flutter build apk
6. Building IPA For iOS
To build an IPA file for iOS, use:

flutter build ios
7. Get All Packages
To get all the packages in your project, use:

flutter pub get
8. To Create Android App Bundle
To create an app bundle for Android to publish app, use:

flutter build appbundle
Conclusion
These are some of the basic commands to get you started with Flutter development. As you go advance, you will find more commands that Flutter provides to aid in the development process. Happy learning!


Basic Flutter Program
In this section, you will learn how to create and run simple flutter program.

Steps To Create Flutter Project
Let’s create a flutter project called first_app. Follow the below steps to create a flutter project.

Open command prompt/terminal.
Type flutter create first_app and press enter.
Type cd first_app and press enter.
Type code . to open project with visual studio code.
Example 1: Hello World Program
This is a simple Flutter application that displays Hello World on screen. First, open the main.dart file from the lib folder and replace the code with the below code.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );
}
Basic Flutter Program Explained
The import ‘package:flutter/material.dart’; means we’re using the Material design package from Flutter.
The void main() {…} function is where every Flutter application starts.
The runApp(…); function is how we initialize and launch the app’s UI.
The MaterialApp widget is our foundation for creating Material Design apps in Flutter.
The Scaffold widget provides a basic visual structure, like a canvas, to design our app upon.
The AppBar widget is like the top bar of an app, where we can place a title or action buttons.
The Text widget is simply for displaying text on the screen.
The Center widget centers the child widget.
Run Flutter Project
To run flutter project, go to run menu and click on Start Debugging or Run Without Debugging. You can also run the project with this command.

flutter run
Challenge
Create a flutter project called second_app. Display your name on screen.



WIDGETS IN FLUTTER
What is Flutter Widgets?
In Flutter, everything on the screen is a widget. Flutter widgets are the UI elements that you see on the screen e.g. button, text, image, list, etc. Widgets can be either stateful or stateless.

Types of Widgets in Flutter
Flutter widgets are broadly categorized into:

Stateless Widget
Stateful Widget
Stateless Widget
Stateless widgets are immutable. Once you define their properties, they remain constant and don’t change. They are the go-to choice for displaying static content like text, images, or icons.

 Info
Note: You can use stl shortcut to create a stateless widget in VS Code.

Example of a Stateless Widget:

class MyStatelessWidget extends StatelessWidget {
  final String text;

  MyStatelessWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
Stateful Widget
Stateful widgets are dynamic and can change during their lifecycle, usually in response to user interactions or real-time data updates. They are essential for content that evolves over time, such as a shopping cart’s contents.

 Info
Note: You can use stf shortcut to create a stateful widget in VS Code.

Example of a Stateful Widget:

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          counter++;
        });
      },
      child: Text('You have pressed the button $counter times.'),
    );
  }
}
Stateless Vs Stateful Widgets
Stateless Widgets	Stateful Widgets
Properties	Stateless widgets remain constant and don’t change	Stateful widgets can change their appearance based on events or data.
Use Case	For static content (e.g., buttons, icons)	For dynamic content (e.g., user interactions)
State	No internal state	Maintains internal state that can be updated
Rebuild	Entire widget tree rebuilt on state changes	Rebuilds only the widget affected by state change
Most Used Flutter Widgets
Text: It is used to display text on the screen.
Container: It is used to display a rectangular box on the screen.
Row: It is used to display widgets in a horizontal manner.
Column: It is used to display widgets in a vertical manner.
Stack: It is used to display widgets on top of each other.
 Info
Note: You can use Container widget to add padding, margin, border, background color, etc. to other widgets.

TEXT IN FLUTTER
Text In Flutter
Text widget is a used to display a string of text. In this section, you will learn how to use text widget, style text, align text, and handle overflow.

Example 1: Display Text In Flutter
In this example, you will learn how to display your name using Text widget.

Text('Raj Sharma')
Example 2: Center Text In Flutter
In this example, you will learn how to center text in flutter. In center widget, you can pass any widget as a child. Here we are passing Text widget as a child.

Center(
  child: Text('Raj Sharma'),
)
 Info
Note: Center widget is used to center the child widget. Here child widget is Text widget.

Example 3: Styling Text In Flutter
In this example, you will learn how to style text in flutter. You will learn to change font size, font weight, and font color.

Text(
    'Raj Sharma',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
)
Example 4: Align Text In Flutter
In this example, you will learn how to align text in flutter. You will learn to align text to left, right, and center.

Center(
  child: Text(
    'Hello I am Mark and I am a Flutter Developer at Technology Channel.',
    textAlign: TextAlign.center,
  ),
)
 Tip
Tip: Try changing the value of textAlign property to TextAlign.left, TextAlign.right, TextAlign.justify.

Example 5: Underline Text In Flutter
In this example, you will learn how to underline text in flutter. You will learn to underline text using decoration property.

Text(
  'Raj Sharma',
  style: TextStyle(
    decoration: TextDecoration.underline,
  ),
)
 Tip
Tip: .

Example 6: Text With Background Color In Flutter
In this example, you will learn how to add background color to text in flutter. You will learn to add background color using backgroundColor property.

Text(
  'Raj Sharma',
  style: TextStyle(
    backgroundColor: Colors.blue,
    fontSize: 20,
  ),
)
Example 7: Handle Text Overflow In Flutter
In this example, you will learn how to handle overflow in flutter. You will learn to handle overflow using overflow property.

Text(
  'A very long text that might not fit the screen. '*10,
  // try commenting the below line and see the difference
  overflow: TextOverflow.ellipsis,
)


CONTAINER IN FLUTTER
Container In Flutter
Container is a box like widget that can be shaped, colored, and sized according to your needs. In this section, you will learn how to use container widget, style it, add border, padding, margin, and background color.

Key Features of a Container
Size: You can specify its height and width.
Color and Decoration: You can paint it with a color or add more complex decorations like borders, rounded corners, or shadows.
Alignment: It lets you align its child (what you put inside the container) to center, left, right, etc.
Padding and Margin: Think of padding as the space inside the box between its edges and the content. Margin is the space outside the box, between the box and other elements.
Example 1: Display Container In Flutter
In this example, you will learn how to display container in flutter. In the child there is Text widget.

Container(
  child: Text('Raj Sharma'),
)
Example 2: Style Container In Flutter
In this example, you will learn to style container by adding padding and color to it.

Container(
  child: Text('Raj Sharma'),
  color: Colors.blue,
  padding: EdgeInsets.all(20),
)
 Info
Note: You can use Container widget to add padding, margin, border, background color, etc. to other widgets.

Example 3: Add Border To Container
In this example, you will learn how to add border to container. You will learn to add border using Container widget.

Container(
  child: Text('Raj Sharma'),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
  ),
)
Example 4: Add Margin & Padding To Container
In this example, you will learn how to add margin and padding to container.

Container(
  child: Text('Raj Sharma'),
  color: Colors.blue,
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(20),
)
Example 5: Add Background Color To Container In Flutter
In this example, you will learn how to add background color to container.

Container(
  child: Text('Raj Sharma'),
  color: Colors.blue,
  padding: EdgeInsets.all(20),
)
Example 6: Add Shadow To Container In Flutter
In this example, you will learn to add shadow to container.

Container(
  child: Text('Raj Sharma'),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 10,
        offset: Offset(4, 4),
      ),
    ],
  ),
)
Example 7: Add Rounded Corners To Container
In this example, you will learn how to add rounded corners to container in flutter.

Container(
  child: Text('Raj Sharma'),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
  color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
  ),
)
Example 8: Add Gradient To Container
In this example, you will learn to add gradient to container.

Container(
  child: Text('Raj Sharma'),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.blue,
        Colors.green,
      ],
    ),
  ),
)
Example 9: Add Image To Container In Flutter
In this example, you will learn to add image from internet using container in flutter.

Container(
  child: Image.network(
    'https://avatars.githubusercontent.com/u/33576285?v=4',
  ),
)
Example 10: Create Square Blue Box
In this example, you will learn to create a square blue box with the text “Hello World” in the center.

Container(
  height: 100.0, // Height of the container
  width: 100.0, // Width of the container
  color: Colors.blue, // Background color
  alignment: Alignment.center, // Align the child to the center
  child: Text('Hello World'), // Child widget
  padding: EdgeInsets.all(10.0), // Padding inside the container
  margin: EdgeInsets.all(20.0), // Margin outside the container
)



ROW IN FLUTTER
Row Widget In Flutter
In Flutter, Row widget displays its children horizontally. It is very useful when placing UI side by side. This is one of the most used widget in flutter.

Example 1: Row In Flutter
In this example, the Row contains three children widgets which are Icon, Text, and Icon.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Row(
          children: [
            Icon(Icons.star, size: 50),
            Text('I am learning flutter'),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    ),
  );
}
Example 2: Create Rating Bar Using Flutter
In this example, you will learn to build star rating bar using row widget.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    ),
  );
}
Row Properties
These are the most common useful properties of the Row widget which helps you control the layout of its children:

Property	Description
mainAxisAlignment	Determines how the children are aligned horizontally.
crossAxisAlignment	Determines how the children are aligned vertically.
children	The widgets that are displayed inside the row.
Main Axis In Row
In Row, main axis determines how the children are aligned horizontally. The mainAxisAlignment property accepts the following values:

MainAxisAlignment Values	Description
MainAxisAlignment.start	Children are aligned at the start of the horizontal axis.
MainAxisAlignment.end	Children are aligned at the end of the horizontal axis.
MainAxisAlignment.center	Children are centered along the horizontal axis.
MainAxisAlignment.spaceBetween	Children have equal spacing between them.
MainAxisAlignment.spaceAround	Children have equal spacing between them, and also the space at the start and the end is divided evenly.
MainAxisAlignment.spaceEvenly	Children have equal spacing before, between, and after them.
Example 3: Main Axis Alignment
In this example, you see 5 stars which are in center horizontally. Run this code online and try changing center to start, end, spaceBetween, spaceAround or spaceEvenly.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    ),
  );
}
 Info
Note: By default mainAxisAlignment value is mainAxisAlignment.start

Cross Axis In Row
In Row, cross axis determines how the children are aligned vertically. The crossAxisAlignment property accepts the following values:

CrossAxisAlignment Values	Description
CrossAxisAlignment.start	Children are aligned at the top of the Row.
CrossAxisAlignment.end	Children are aligned at the bottom of the Row.
CrossAxisAlignment.center	Children are vertically centered in the Row.
CrossAxisAlignment.stretch	Children are forced to fill the available space vertically.
CrossAxisAlignment.baseline	Children are aligned by their baseline (useful for text).
Example 4: Cross Axis Alignment
In this example, you see 5 stars which are in center vertically. Run this code online and try changing center to start, end, stretch, baseline.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: const Row(
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star_border, color: Colors.yellow),
            ],
          ),
        ),
      ),
    ),
  );
}
 Info
Note: By default crossAxisAlignment value is crossAxisAlignment.center

Example 5: Using Main Axis & Cross Axis Alignment
In this example, you see 5 stats which are in center horizontally and vertically. Run this code online and try changing its main axis and cross axis alignement.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: const Row(
            // Try replacing "center" with "start", "end", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.center,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star_border, color: Colors.yellow),
            ],
          ),
        ),
      ),
    ),
  );
}
Overflow Issue
When you put too many widgets inside a Row and they can’t fit within the screen, you’ll get an overflow error. Here are simple ways to handle this overflow issue in Flutter:

Wrap in SingleChildScrollView widget
Use Expanded or Flexible widget
Example 6: Wrap In SingleChildScrollView
When you have many children widgets, and they can’t all fit on the screen, you might want to scroll to see the ones that are out of view. For more see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
              mainAxisAlignment: MainAxisAlignment.center,
              // Try replacing "center" with "start", "end", "stretch" or "baseline"
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  50, (index) => const Icon(Icons.star, color: Colors.yellow)),
            ),
          ),
        ),
      ),
    ),
  );
}
Example 7: Using Expanded
In a Row, use Expanded to make a widget take up all the available remaining space within its parent widget. For more, see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: Row(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50,
                (index) =>  const Expanded(
                    child: Icon(Icons.star, color: Colors.yellow))),
          ),
        ),
      ),
    ),
  );
}
Example 8: Using Flexible
Flexible allows a widget within a Row to fit its content but won’t exceed its maximum size, even if there’s extra space available. For more, see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: Row(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
             // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50,
                (index) => const Flexible(
                    fit: FlexFit.loose,
                    child: Icon(Icons.star,  color: Colors.yellow))),
          ),
        ),
      ),
    ),
  );
}
 Info
Note: Expanded forces its child to fill available space, while Flexible allows its child to occupy space without necessarily filling it.


COLUMN IN FLUTTER
Column Widget In Flutter
In Flutter, Column widget displays its children vertically. It is very useful when placing UI top to bottom. This is one of the most used widgets in Flutter.

Example 1: Column In Flutter
In this example, the Column contains three children widgets which are Icon, Text, and Icon.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Column(
          children: [
            Icon(Icons.star, size: 50),
            Text('I am learning flutter'),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    ),
  );
}
Example 2: Create Container Boxes
In this example, you will learn to build 4 different containers inside the Column.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
          ],
        ),
      ),
    ),
  );
}
Column Properties
These are the most common useful properties of the Column widget which help you control the layout of its children:

Property	Description
mainAxisAlignment	Determines how the children are aligned vertically.
crossAxisAlignment	Determines how the children are aligned horizontally.
children	The widgets that are displayed inside the column.
Main Axis In Column
In Column, the main axis determines how the children are aligned vertically. The mainAxisAlignment property accepts the following values:

MainAxisAlignment Values	Description
MainAxisAlignment.start	Children are aligned at the start of the vertical axis.
MainAxisAlignment.end	Children are aligned at the end of the vertical axis.
MainAxisAlignment.center	Children are centered along the vertical axis.
MainAxisAlignment.spaceBetween	Children have equal spacing between them.
MainAxisAlignment.spaceAround	Children have equal spacing between them, and also the space at the start and the end is divided evenly.
MainAxisAlignment.spaceEvenly	Children have equal spacing before, between, and after them.
Example 3: Main Axis Alignment
In this example, you see 4 containers which are centered vertically. Run this code online and try changing center to start, end, spaceBetween, spaceAround or spaceEvenly.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Column(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
          ],
        ),
      ),
    ),
  );
}
 Info
Note: By default mainAxisAlignment value is mainAxisAlignment.start

Cross Axis In Column
In Column, the cross axis determines how the children are aligned horizontally. The crossAxisAlignment property accepts the following values:

CrossAxisAlignment Values	Description
CrossAxisAlignment.start	Children are aligned at the left of the Column.
CrossAxisAlignment.end	Children are aligned at the right of the Column.
CrossAxisAlignment.center	Children are vertically centered in the Column.
CrossAxisAlignment.stretch	Children are forced to fill the available space horizontally.
CrossAxisAlignment.baseline	Children are aligned by their baseline (useful for text).
Example 4: Cross Axis Alignment
In this example, you see 4 boxes which are centered horizontally. Run this code online and try changing center to start, end, stretch, or baseline.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            // Try replacing "center" with "start", "end", "stretch", or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    ),
  );
}
 Info
Note: By default crossAxisAlignment value is crossAxisAlignment.center

Example 5: Using Main Axis & Cross Axis Alignment
In this example, you see 4 containers which are aligned vertically in the center. Run this code online and try changing its main axis and cross axis alignment.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
              mainAxisAlignment: MainAxisAlignment.center,
              // Try replacing "center" with "start", "end", "stretch" or "baseline"
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  50, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  )),
            ),
          ),
        ),
      ),
    ),
  );
}
Overflow Issue
When you put too many widgets inside a Column and they can’t fit within the screen, you’ll get an overflow error. Here are simple ways to handle this overflow issue in Flutter:

Wrap in SingleChildScrollView widget
Use Expanded or Flexible widget
Example 6: Wrap In SingleChildScrollView
When you have many children widgets, and they can’t all fit on the screen, you might want to scroll to see the ones that are out of view. For more see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
              mainAxisAlignment: MainAxisAlignment.center,
              // Try replacing "center" with "start", "end", "stretch" or "baseline"
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  50, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  )),
            ),
          ),
        ),
      ),
    ),
  );
}
Example 7: Using Expanded
In a Column, use Expanded to make a widget take up all the available remaining space within its parent widget. For more, see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50,
                (index) => Expanded(
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  ))),
          ),
        ),
      ),
    ),
  );
}
Example 8: Using Flexible
Flexible allows a widget within a Column to fit its content but won’t exceed its maximum size, even if there’s extra space available. For more, see the example below:

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
             // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50,
                (index) => Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  ))),
          ),
        ),
      ),
    ),
  );
}
 Info
Note: Expanded forces its child to fill available space, while Flexible allows its child to occupy space without necessarily filling it.



Row and Column Flutter
Row and Column helps you to align its children horizontally and vertically. These widgets are important when designing the user interface for an application.

Row	Column
Arranges children horizontally.	Arranges children vertically.
Example 1: Row & Column
In this example, you will learn to use Row and Column widgets together with a CircleAvatar to create a user profile layout.

Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(
        'https://avatars.githubusercontent.com/u/33576285?v=4',
      ),
    ),
    Padding(padding: EdgeInsets.all(2.0)),
    Column(
      children: <Widget>[
        Text(
          'John Doe',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    ),
  ],
)
Example 2: Login Form
In this example, you will learn how to build a simple login form using Column and Row, along with the TextField for input fields.

Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    const Row(
      children: <Widget>[
        Text('Username: '),
        Expanded(child: TextField()),
      ],
    ),
    const Row(
      children: <Widget>[
        Text('Password: '),
        Expanded(
          child: TextField(
            obscureText: true,
          ),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {},
            child: const Text('Login'),
          ),
        ),
      ],
    ),
  ],
)
Example 3: Star Pattern
In this example, you will learn how to create a star pattern using Center, Column, and Row widgets, along with the Icon widget.

Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // First row (one star in the middle)
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.star, color: Colors.blue)],
      ),
      // Second row (one star in the middle)
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.star, color: Colors.blue)],
      ),
      // Third row (five stars)
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, color: Colors.blue),
          Icon(Icons.star, color: Colors.blue),
          Icon(Icons.star, color: Colors.blue),
          Icon(Icons.star, color: Colors.blue),
          Icon(Icons.star, color: Colors.blue),
        ],
      ),
      // Fourth row (one star in the middle)
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.star, color: Colors.blue)],
      ),
      // Fifth row (one star in the middle)
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.star, color: Colors.blue)],
      ),
    ],
  ),
),



STACK IN FLUTTER
Stack In Flutter
Imagine you’re making a sandwich. You put one ingredient on top of another, right? In Flutter, the Stack works similarly. It lets you put one thing (like a button or an image) on top of another. It’s super useful when you want things to overlap in your app’s design.

When to Use Stack
Buttons Over Pictures: Like a play button on a video thumbnail.
Text on Images: Like captions on photos.
Cool Designs: For when you want to mix things up from the usual top-down look.
 Info
Note: The first one is at the bottom, and each new one goes on top. In a Stack, your first widget is at the bottom, and others are layered over it.

Example 1: Basic Stack Implementation
Here’s how you can create a basic Stack with overlaid elements:

Stack(
  alignment: Alignment.center,
  children: [
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
    const Text('I’m on top!'),
  ],
)
Example 2: Profile Picture with Online Status Indicator
In this example, you will learn to create a circular profile picture with a small green dot at the bottom to indicate the user is online.

Stack(
  alignment: Alignment.bottomRight,
  children: [
    const CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
        'https://avatars.githubusercontent.com/u/33576285?v=4'
      ),
    ),
    DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: const SizedBox(width: 20, height: 20),
    ),
  ],
)
Positioned Widget
The Positioned widget is a special type of widget used inside a Stack widget to control the position of a child widget. It has the following useful properties:

Property	Description
top	Distance from the top edge of the stack.
bottom	Distance from the bottom edge of the stack.
left	Distance from the left edge of the stack.
right	Distance from the right edge of the stack.
You can see the demo of the Positioned widget in example 3 and 4.

Example 3: Product Image with Discount Badge
In this example, you will learn to create a product image with a discount badge at the top right corner.

Stack(
  children: [
    Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    Positioned(
      top: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: const Text(
          '20% OFF',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  ],
)
Example 4: Overlay Text on Image
In this example, you will learn to overlay text on an image.

Stack(
  children: [
    Image.network(
      'https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'
    ),
    Positioned(
      bottom: 10,
      left: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'iPhone 15 Pro Max',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  ],
)



CREATE COUNTER APP
Create Counter App In Flutter
In this section, you will learn how to create a simple counter app in flutter. This app will help you to understand the basic concepts of flutter. So let’s start.

Step 1: Create Flutter Project
To create a flutter project, open the command prompt and run the following command:

flutter create counter_app
Step 2: Define the Main Entry Point
Open main.dart file and define the main entry point of the app.

import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}
Step 3: Create the CounterApp Widget
Now, you need to create the CounterApp widget.

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterScreen(),
    );
  }
}
Step 4: Create the CounterScreen Widget
Now, create the CounterScreen widget.


class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Define the counter variable
  int _counter = 0;

  // Define the increment and decrement counter methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 72),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Add',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Subtract',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Step 5: Run the App
Now, you can run the app using the following command:

flutter run



Basic Flutter Practice Questions
Create a new Flutter application that displays “Welcome to Flutter” centered on the screen, with a font size of 24, in blue color, and with a yellow background.
Describe the difference between a StatelessWidget and a StatefulWidget. Give an example of a situation where you would use each.
Write a Flutter layout using a Row to create a horizontal bar of three evenly spaced buttons.
Use the Stack widget to overlay text on an image.
Create a Flutter application that contains an image of a puppy and a button that increases the size of the puppy (double the size each time the button is pressed).
Create a Profile Screen UI Design in Flutter using Row and Column Widgets.