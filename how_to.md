# UPDATE ALL PACKAGES IN FLUTTER

We shall discover how to update every package in Flutter by looking at this example. To update all of the flutter packages, we will use the flutter pub upgrade command.

**See Available Upgrades**

If you want to see the available upgrades, you can use the flutter pub outdated command. It will show you the available upgrades for your flutter project.

`flutter pub outdated`

**Update All Packages**

To update all packages in flutter, you can use the flutter pub upgrade command. It will update all packages in your flutter project.

`flutter pub upgrade`

**Update a Specific Package**

If you want to update a specific package, you can use the flutter pub upgrade command with the package name. It will update the specific package in your flutter project.

`flutter pub upgrade <package_name>`

*Example: Update Specific Package*

Let’s suppose you want to update the firebase_auth package. To update the firebase_auth package, you can use the following command.

`flutter pub upgrade firebase_auth`

**Update a Specific Package to a Specific Version**

If you want to update a specific package to a specific version, you can use the flutter pub upgrade command with the package name and version. It will update the specific package to a specific version in your flutter project.

`flutter pub upgrade <package_name> <version>`

*Example: Update Specific Package to a Specific Version*

Let’s suppose you want to update the firebase_auth package to version 1.0.0. To update the firebase_auth package to version 1.0.0, you can use the following command.

`flutter pub upgrade firebase_auth 1.0.0`


# ADD INTERNET PERMISSION IN FLUTTER
In this example, you will learn how to add internet permission in flutter. And then you will learn how to add internet permission in flutter for android and ios.

**Add Internet Permission in Android**

To add internet permission in android, you need to add the following line in the android/app/src/main/AndroidManifest.xml file.

`<uses-permission android:name="android.permission.INTERNET"/>`

File Should Look Like This:

```
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
<uses-permission android:name="android.permission.INTERNET"/>
    <application
        android:label="Learn Computer Basic"
        android:icon="@mipmap/ic_launcher">
```

**Add Internet Permission in iOS**

To add internet permission in iOS, you need to add the following line in the ios/Runner/Info.plist file.

```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```


# CONVERT WEBSITE TO FLUTTER APP
This part will teach you how to turn a website into a Flutter application. You can convert any website to flutter app using the webview_flutter package. This package is used to convert any website to flutter app.

**Step 1: Create a Flutter Project**

We will convert google.com website to flutter app. So, create a flutter project using the below command.

`flutter create website_to_flutter_app`

**Step 2: Add Package**

Add webview_flutter package to your pubspec.yaml file.

dependencies:

```
  flutter:
    sdk: flutter
  webview_flutter: ^4.4.1
```

**Step 3: Add Code**

Add the below code to your main.dart file.

```
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Controller
  final WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse('https://www.google.com'));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Google Website'),
          ),
          body: WebViewWidget(controller: controller)),
    );
  }
}
```

**Step 4: Run App**

Run your app using the below command.

`flutter run`

Convert HTML to Flutter App
You can also convert website content to dart variable and then use it in your flutter app. For example, you can convert the below html code to dart variable and then use it in your flutter app.

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

String htmlContent = '''
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
''';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Controller
  final WebViewController controller = WebViewController()
    ..loadHtmlString(htmlContent);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Google Website'),
          ),
          body: WebViewWidget(controller: controller)),
    );
  }
}
Permissions
You need to add internet permission in your AndroidManifest.xml file. For iOS, you don’t need to add any permission.

<uses-permission android:name="android.permission.INTERNET"/>
Conclusion
Congratulations, you have successfully converted website to flutter app.


HOW TO GET JOB IN FLUTTER
How to Get Job in Flutter
Getting a job as a Flutter developer involves a combination of technical proficiency, networking, and job search strategies. Here’s a step-by-step guide to help you land a job in Flutter development:

1. Master Flutter
Before you start applying for jobs, you need to master Flutter. You can learn Dart Programming Language and Flutter from our Dart Tutorial and Flutter Tutorial respectively. Make sure you have a solid understanding of the following concepts:

Dart Programming Language Skills
Object Oriented Programming concepts
Flutter’s widgets and the widget tree
State management solutions like Provider, Riverpod, BLoC, etc.
CI/CD tools like GitHub Actions, Codemagic, etc.
Building small apps and gradually move to more complex projects.
2. Build a Portfolio
A portfolio is a collection of your best work. It can be a website, a GitHub repository, or a mobile app. It should showcase your skills and experience in Flutter development. You can build a portfolio by working on open-source projects, contributing to existing projects, or creating your own apps.

Create a portfolio of Flutter projects. These could range from simple apps to more intricate ones.
Use platforms like GitHub to showcase your code. It’s essential to show potential employers that you can write clean and maintainable code.
Deploy a few of your apps to the App Store or Google Play to demonstrate your ability to complete the full app development cycle.
3. Create a Resume
A resume is a written description of your education, professional background, and skills. When recruiters get your application, they see it right away. You can get an interview and differentiate yourself from the competition with a strong CV. Here are some tips for creating a resume that will get you noticed:

Highlight your Flutter and Dart experience prominently.
Mention other relevant skills like familiarity with CI/CD, integration with Firebase, web development, etc.
Include links to your GitHub projects and deployed apps.
Include objective statements that describe what you’re looking for in a job.
 Info
Note: Don’t forget to create a LinkedIn profile. You will find it quite beneficial to network with other Flutter developers, possible employers, and other professionals in this sector.

4. Networking
Networking is a great way to find job opportunities and build relationships with other Flutter developers. Here are some tips for networking effectively:

Join local Flutter meetups and conferences.
Attend Flutter events like Flutter Engage and Flutter Live.
Connect with other Flutter developers on LinkedIn and Twitter.
5. Communication
Communication is an essential skill for any developer. It’s important to be able to communicate your ideas clearly and concisely. Here are some tips for improving your communication skills:

Practice writing emails and blog posts.
Join a Toastmasters club or take public speaking classes.
Read books on communication and presentation skills.
6. Job Search
Once you’ve mastered Flutter and built a portfolio, it’s time to start looking for jobs. Here are some top flutter job sites where you can apply for a flutter job.

Indeed
Glassdoor
LinkedIn
Flutter Jobs
 Info
Note: Customize your cover letter for each position. Address the specific requirements mentioned in the job description. Also Prepare for technical interviews. This might include coding challenges, whiteboarding sessions, or discussions about Flutter-specific topics.

7. Stay Updated
Flutter is a rapidly evolving technology. It’s important to stay up-to-date with the latest developments in the Flutter ecosystem.

8. Consider Freelancing
If you’re finding it challenging to land a full-time role initially, consider taking up freelance Flutter projects. Platforms like Upwork, Freelancer, and Toptal often have Flutter-related gigs. This will help you gain more experience and build a stronger portfolio.



REMOVE DEBUG BANNER IN FLUTTER
Remove Debug Banner in Flutter
To remove the debug banner in flutter, you need to set the debugShowCheckedModeBanner property to false in the MaterialApp widget.

MaterialApp(
    // set this property to false
  debugShowCheckedModeBanner: false,
)
 Info
Note: This change is only for visual purposes in the debug mode and does not affect the release build of your app.

For CupertinoApp
If you are using the CupertinoApp widget, then you need to set the debugShowCheckedModeBanner property to false in the CupertinoApp widget.

CupertinoApp(
    // set this property to false
  debugShowCheckedModeBanner: false,
)