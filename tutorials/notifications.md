# Notification in Flutter
A important part of app development, regardless of the platform, is the user’s ability to receive notifications. This article dives deep into the world of notifications in Flutter.


> Note: Grasping the fundamentals of notifications can significantly amplify user engagement and satisfaction with your Flutter applications.

**Why Notifications Is Important?**

Through rapidly alerting users to changes, messages, or events improving user experience, holding attention and promoting interaction, notifications play a crucial role in app engagement. In the end, they keep users informed and connected with relevant information. Notification are useful because of the following reasons:

1. **User Engagement**: Timely notifications can keep the user engaged by providing updates, reminders, or news, making them revisit the application more frequently.

2. **Real-time Updates**: Notifications are crucial for apps that require real-time updates, such as news or chat apps.

3. **Improved User Experience**: They can provide seamless experiences by informing users about completed tasks, new features, or essential actions needed.

### Different Notification Options in Flutter
Flutter offers various packages and plugins that facilitate notification management, from local notifications to push notifications:

1. **Local Notifications**: Using plugins like flutter_local_notifications, developers can schedule and display notifications locally without the need for an external server. You can learn more about local notifications in Flutter here.

2. **Firebase Cloud Messaging (FCM)**: A cloud solution for messages on iOS, Android, and web applications. The firebase_messaging plugin in Flutter allows integrating push notifications in your applications.

3. **OneSignal**: A popular third-party service for push notifications. Flutter developers can utilize the onesignal_flutter package to integrate OneSignal into their apps.

**Local Vs Push Notifications**
While both serve the primary purpose of notifying users, they are distinct:

**Local Notifications**: These alerts are internal to the app and are not dependent on an internet connection. For things like daily reminders or alarms, they are ideal.

**Push Notifications**: These need an internet connection and are transmitted to the user’s smartphone through the app. They originate from an external server and are perfect for marketing messages, news alerts, and real-time updates.



### Display Local Notification in Flutter
The flutter_local_notifications package can be used with Flutter to show local notifications. You may use this package to schedule and show notifications in your Flutter App.

**Step 1: Create Flutter Project**

Let’s create a flutter project called local_notification by flutter create command. Follow the below steps to create a flutter project.

`flutter create local_notification`

**Step 2: Add flutter_local_notifications Package**

To add the flutter_local_notifications package to your Flutter project, open the pubspec.yaml file and add the following code:

**dependencies:   flutter_local_notifications: ^15.1.1**

  
**Step 3: Create File**

Without increasing the complexity of the app, let’s create 3 files. main.dart : In this file we will do the initiation home_screen.dart : This file will be used as UI to implement and show notifications in the app notification_service.dart : This will maintain the core logic of the notification.

Here is code for `main.dart` file:

```
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_noti/home_screen.dart';
import 'package:local_noti/service/notification_service.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
```

Here is code for `home_screen.dart` file:

```
import 'package:flutter/material.dart';
import 'notification_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () => NotificationService.showNotification(
                  title: "This is the title of the notification",
                  body: "This is the body of the notification",
                ),
            child: const Text('Send Notification')),
      ),
    );
  }
}
```


Here is code for `notification_service.dart` file:

```
/// Importing this for showing log
import 'dart:developer';

/// Dependency import for local notifications
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'main.dart';

/// Remember the global varibales I have created in main.dart
/// this import allows us to use that varibale

/// Notificaition Service class handles everything regarding notifications
class NotificationService {
  /// the method is static, for making it easier to use. You can follow the object
  /// instance method as well

  static Future<void> init() async {
    /// This is where start the initialization

// ****** Andriod Initialization ******

    /// @mipmap/ic_launcher' is the icon for the notification, which is deafult in flutter
    /// if you want to use your custom icon make sure to provide the path to that icon.

    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

// ****** IOS Initialization ******

    DarwinInitializationSettings darwinInitializationSettings =
        const DarwinInitializationSettings(

// this will ask permissions to display alert and others are clean with the name
            requestAlertPermission: true,
            requestBadgePermission: true,
            defaultPresentSound: true);

// ****** Combining  Initializations ******

    InitializationSettings initializationSettings = InitializationSettings(
        iOS: darwinInitializationSettings,
        android: androidInitializationSettings);

    /// now using the global instance of FlutterLocalNotificationsPlugin()
    /// Let's Initialize the  notification
    bool? init = await flutterLocalNotificationsPlugin
        .initialize(initializationSettings);
    log('Noti $init');
  }

/* 

Notifications have few things : id, title, body and payload, 
in this method the id is optional, however you're recommended to
provide id  for different notifications. 
 
*/
  static showNotification({
    int? id = 0,
    required String title,
    required String body,
    var payload,
  }) async {
/* 

In notifications, there are few things that we keep in mind.The sound, 
how important the notification is and what is the priority of the notification, 
playload ( this basically means what data does your notifications hold ) of the notification. 

 We need channel id and channel name in the notification, here  "flutter-tut" is 
channel id and "flutter tutorial" is channel name. 

You can give whatever name you wish to give.


*/

// ****** Andriod Configuration ******

    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'flutter-tut', 'flutter tutorial',
      playSound: true,

// Higher the Priority and Importance,
// will result in high visibility of notification

      priority: Priority.max,
      importance: Importance.max,
    );

// ****** iOS Configuration : with the necessary requirements ******

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      presentBanner: true,
      presentBadge: true,
    );

    /// let's combine both details.

    NotificationDetails noti = NotificationDetails(
        iOS: darwinNotificationDetails, android: androidNotificationDetails);

    /* 

This line will show the notification, after all the configuration is done
 
Passing the payload is totally option. However if your want to navigate to a 
particular screen on click of the notification of perform certain action. Payload
become crutial. 

*/

    await flutterLocalNotificationsPlugin.show(0, title, body, noti,
        payload: payload);
  }
}
```

**Step 4: Run the App**

Now, run the app and click on the Send Notification button to display the local notification.



## Display Push Notification in Flutter
In this section, you will learn how to display push notification in flutter using firebase_messaging package. This package allows you to display push notification in flutter for android, ios, web, and desktop.

**Step 1: Create Flutter Project**

Let’s create a flutter project called push_notification by flutter create command. Follow the below steps to create a flutter project.

`flutter create push_notification`


>Note: Open the project in your favorite editor and make sure you are in the root directory of the project in terminal.

**Step 2: Create Firebase Project**

Go to Firebase Console and create a new project. If you already have a project, then you can use that project.

**Step 3: Add Firebase to Flutter App**

Click on Flutter icon to add firebase to flutter app. You also need to install firebase cli to add firebase to flutter app. You can install firebase cli using the following command. Also follow the instructions from firebase.


> Note: If you don’t have npm installed, then you can install it from here.

`npm install -g firebase-tools`

Command to add firebase to flutter app.

`firebase login`
`firebase init`
`dart pub global activate flutterfire_cli`
`flutterfire configure --project=<projectId>`

**Step 4: Add Packages**

Now it’s time to add firebase_core and firebase_messaging package in your pubspec.yaml file. You can add these packages in your pubspec.yaml file as shown below.

```
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.16.0  
  firebase_messaging: ^14.6.8
```

**Step 5: Create File**

In the lib folder, create a new file called firebase_api.dart and add the following code.

```
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      criticalAlert: true,
      sound: true,
    );

    final token = await _firebaseMessaging.getToken();
    print('Token: $token');
  }

  void subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }
}
```

#### Change Main File
In the `main.dart` file, add the following code.


```
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'firebase_api.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotification();
  FirebaseApi().subscribeToTopic('all');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Handling a background message ${message.messageId}');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationHandler(),
    );
  }
}

class NotificationHandler extends StatefulWidget {
  @override
  _NotificationHandlerState createState() => _NotificationHandlerState();
}

class _NotificationHandlerState extends State<NotificationHandler> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();

    _firebaseMessaging.getToken().then((String? token) {
      assert(token != null);
      print("Push Messaging token: $token");
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message.notification!.title!),
              subtitle: Text(message.notification!.body!),
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Handler'),
      ),
      body: Center(
        child: Text('Waiting for message...'),
      ),
    );
  }
}
```


**Step 6: Run Flutter Project**
Run your flutter project using the following command.

`flutter run`

**Step 7: Send Notification**

Open your firebase console and go to Cloud Messaging. Click on New Notification and send a notification. You will see the notification on your device.

# QUESTIONS FOR PRACTICE 
1. Develop a Flutter app that triggers local notifications at a specified time. Include options for scheduling and cancelling notifications.
2. Build a Flutter application that receives push notifications using Firebase Cloud Messaging. Test with different message types.
3. Create an app that allows users to set reminders for various tasks. Use local notifications to alert users when a task is due.
4. Build a news application that sends push notifications to users when new articles are published or when there is breaking news.
5. Build an app that allows users to select custom sounds for different types of notifications.
6. Create an app where notifications come with actions (like ‘Reply’, ‘Mark as Read’, etc.), and demonstrate handling these actions within the Flutter app.