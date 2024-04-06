DRAWER IN FLUTTER
Introduction
Drawer is a sidebar that appears from the side of the screen, usually filled with menu options or navigation links, allowing you to navigate between different parts of the application.

Create Drawer in Flutter
To create a drawer in flutter, you need to use Scaffold widget. Scaffold widget provides a drawer property to add a drawer in your app. Here is an example of drawer in flutter:

Scaffold(
  drawer: Drawer(
  ),
  appBar: AppBar(
    title: Text('Click Drawer Icon'),
  ),
)
Drawer From Right
By default, the drawer appears from the left side of the screen. If you want to make it appear from the right side, you can use endDrawer property of Scaffold widget. Here is an example of drawer from right:

Scaffold(
  endDrawer: Drawer(
  ),
  appBar: AppBar(
    title: Text('Click End Drawer Icon =>>>>'),
  ),
)
Example 1: Simple Drawer
In this example below, you will learn to create drawer with options Home, About, and Settings with icons.

Drawer(
  child: ListView(
    children: const [
      DrawerHeader(
        child: Text('Drawer Header'),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('About'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
  ),
)
Example 2: Ecoommerce App Drawer
In this example below, you will learn how to create a beautiful drawer for an ecommerce app with options Home, Categories, Orders, Wishlist and Settings.

Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Menu'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(title: Text('Home'), onTap: () {}),
      ListTile(title: Text('Categories'), onTap: () {}),
      ListTile(title: Text('Orders'), onTap: () {}),
      ListTile(title: Text('Wishlist'), onTap: () {}),
      ListTile(title: Text('Settings'), onTap: () {}),
    ],
  ),
)
Example 3: Account Management in Social Media Apps
In this example below, you will learn how to create a beautiful drawer for a social media app with options Profile, Friends, Messages and Settings.

Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('User Name'),
        accountEmail: Text('user@example.com'),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.orange,
          child: Text('U'),
        ),
      ),
      ListTile(title: Text('Profile'), onTap: () {}),
      ListTile(title: Text('Friends'), onTap: () {}),
      ListTile(title: Text('Messages'), onTap: () {}),
      ListTile(title: Text('Settings'), onTap: () {}),
    ],
  ),
)
Example 4: Beautiful Drawer Header
In this example below, you will build a beautiful drawer header with background image and user profile image.

Drawer(
  child: ListView(
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://flutter-tutorial.net/images/sample_background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/33576285?v=4'),
            ),
            SizedBox(height: 10),
            Text('John Doe', style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
          ],
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {
          // Handle the tap if needed
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('About'),
        onTap: () {
          // Handle the tap if needed
        },
      ),
    ],
  ),
)
Challenge
Create a beautiful drawer for accountinng app with options Dashboard, Invoices, Payments, Expenses and Settings.

SNACKBAR IN FLUTTER
Introduction
Snackbar is a lightweight message bar displayed at the bottom of the screen. It is used to show short notifications like saved or deleted and lets users perform actions such as undo or retry.

Example 1: Simple Snackbar
In this example below, you will create a simple Snackbar that displays a message This is a Snackbar! when a button is pressed.

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a Snackbar!'),
  ),
);
Example 2: Snackbar with Action
In this example below, you will create a Snackbar with an action that allows the user to undo an operation.

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('Message deleted'),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {
        // Perform some action
      },
    ),
  ),
);
Example 3: Customized Snackbar
In this example below, you will create a Snackbar with a custom background color.

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a custom Snackbar!'),
    backgroundColor: Colors.blue,
  ),
);
Example 4: Snackbar with Duration
In this example below, you will create a Snackbar that disappears after 3 seconds.

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This message will disappear after 3 seconds'),
    duration: Duration(seconds: 3),
  ),
);
Challenge
Create a Snackbar that displays a message Account created successfully when a user press Register button. The Snackbar should have a green background and disappear after 5 seconds.

MaterialButton(
  onPressed: () {
    // your code here
  },
  child: Text('Register'),
)


BOTTOM NAV BAR IN FLUTTER
Introduction
Bottom Navigation Bar is a material widget at the bottom of the screen that displays multiple tabs for easy navigation between different views or functionalities in an app.

Basic Bottom Navigation Bar
To use a Bottom Navigation Bar in Flutter, you can wrap it inside a Scaffold widget. Here’s a basic example:

Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
      ),
    ],
  ),
);
Handling Navigation
Typically, you want to change the body of the Scaffold based on the tab selected. This requires managing the state of the selected index. You can see complete demo in Example 1 soon.

int _selectedIndex = 0;

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

...

BottomNavigationBar(
  items: <BottomNavigationBarItem>[...],
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
),
Example 1: Ecommerce App Bottom Navigation Bar
In this example below, you will create a Bottom Navigation Bar with 4 tabs: Home, Categories, Cart, and Profile. Each tab will have a corresponding screen.

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const [
    Text('Home'),
    Text('Categories'),
    Text('Cart'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Ecommerce App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo, // AppBar color
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo, // BottomNavigationBar background color
        selectedItemColor: Colors.amber, // Selected item color
        unselectedItemColor: Colors.white, // Unselected item color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
Challenge
Create a Bottom Navigation Bar with at least 4 items, each representing different functionalities of a gym app (e.g., Home, Workouts, Profile, Settings). Implement corresponding Text widgets for each tab.



ALERT DIALOG IN FLUTTER
Introduction
Alert Dialog is simple pop-up message that grab the user’s attention for important information or decisions. They pop up over the app’s content, showing titles, messages, and action buttons for quick user responses.

Why Use Alert Dialogs?
User Attention: Captures the user’s focus effectively.
Immediate Action: Facilitates quick decision-making or acknowledgment from the user.
Feedback Collection: Can be used to gather input or feedback from the user.
Creating an Alert Dialog
Creating an alert dialog in Flutter is straightforward. You typically wrap the dialog presentation in a function that can be called on a specific event, such as pressing a button.

void showMyAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert Dialog Title'),
        content: Text('This is an alert dialog. Are you sure you want to proceed?'),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('OK'),
            onPressed: () {
              // Handle the action and close the dialog
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
To use the showMyAlertDialog function, you can call it from a button’s onPressed event or any other event that triggers the dialog.

ElevatedButton(
  onPressed: () => showMyAlertDialog(context),
  child: Text('Show Alert Dialog'),
)
Example 1: Show Alert Dialog To Exit From App
In this example, you will create an alert dialog that asks the user for confirmation before exiting the app.

showMyAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Exit App'),
        content: Text('Are you sure you want to exit?'),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('OK'),
            onPressed: () {
              // Handle the action and close the dialog
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Example 2: Readymade Alert Dialog
This is ready-made alert dialog function that you can use in your app. This function takes the context, title, and content as parameters and displays the alert dialog.

showMyAlertDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('OK'),
            onPressed: () {
              // Handle the action and close the dialog
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Challenge
Try creating an alert dialog displaying a message Account created successfully when a user presses the Register button.

    MaterialButton(
      onPressed: () {
        // your code here
      },
      child: Text('Register'),
    )


TABLE IN FLUTTER
Table in Flutter
Table widget is a great way to display data in a table layout within your mobile app. It’s useful when you need to present data in a structured format, such as financial reports, timetables, or settings.

Example 1: Student Record With Table
In this example below, you will learn to create a table to display student information such as name, subject, and grade.

Table(
  border: TableBorder.all(), // Adds a border to all cells
  columnWidths: <int, TableColumnWidth>{
    0: FixedColumnWidth(100.0), // fixed to 100.0 width
    1: FlexColumnWidth(), // automatically adapts to fill the table width
    2: FixedColumnWidth(100.0), // fixed to 100.0 width
  },
  children: [
    TableRow(children: [
      Text('Name'),
      Text('Subject'),
      Text('Grade'),
    ]),
    TableRow(children: [
      Text('Alice'),
      Text('Math'),
      Text('A'),
    ]),
    TableRow(children: [
      Text('Bob'),
      Text('Science'),
      Text('B+'),
    ]),
    // Add more students and grades here
  ],
)
DataTable In Flutter
DataTable widget is a powerful widget that allows you to display tabular data with advanced features such as sorting, selection, and pagination. It is best for displaying complex tables with interactivity.

Example 2: Student Record With DataTable
In this example below, you will learn to create a DataTable to display student information such as name, subject, and grade.

DataTable(
  columns: const [
    DataColumn(label: Text('Name')),
    DataColumn(label: Text('Subject')),
    DataColumn(label: Text('Grade')),
  ],
  rows: const [
    DataRow(cells: [
      DataCell(Text('Alice')),
      DataCell(Text('Math')),
      DataCell(Text('A')),
    ]),
    DataRow(cells: [
      DataCell(Text('Bob')),
      DataCell(Text('Science')),
      DataCell(Text('B+')),
    ]),
    // Add more students and grades here
  ],
)
Example 3: Contact List App
Now you will learn to create a contact list app using DataTable widget. You will define a model class called contact.dart to store contact information. Then you will build DataTable widget to display contact information.

Step 1: Define Model Class
In this step, you will define a model class called contact.dart. This class will be used to store contact information. You can define this class in lib/model/contact.dart file. Add the following code in contact.dart file.

class Contact {
  final String name;
  final String email;
  final String phone;

  Contact({this.name, this.email, this.phone});
}
Step 2: Create Contact List
In this step, you will create a list of contacts. You can define this list in lib/data/contact_data.dart file. Add the following code in contact_data.dart file.

import 'package:your_app_name/model/contact.dart';

List<Contact> contacts = [
  Contact(name: 'Alice', email: 'alice@domain.com', phone: '1234567890'),
  Contact(name: 'Bob', email: 'bob@domain.com', phone: '1234567890'),
  Contact(name: 'Charlie', email: 'charl@domain.com', phone: '1234567890'),
  // Add more contacts here
];
Step 3: Display Contact List
In this step, you will display the contact list using DataTable widget. You can define this widget in lib/screens/contact_list.dart file. Add the following code in contact_list.dart file.

import 'package:flutter/material.dart';
import 'package:your_app_name/data/contact_data.dart';
import 'package:your_app_name/model/contact.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: DataTable(
        columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Email')),
          DataColumn(label: Text('Phone')),
        ],
        rows: contacts.map((contact) {
          return DataRow(cells: [
            DataCell(Text(contact.name)),
            DataCell(Text(contact.email)),
            DataCell(Text(contact.phone)),
          ]);
        }).toList(),
      ),
    );
  }
}
Challenge
Create a DataTable that displays a list of products with columns Name, Price, and Stock. The DataTable should have 5 rows of products with different names, prices, and stock values.


Flutter Practice Questions
Create a Flutter application with a form that includes text fields for name, email, and phone number. Use custom styling for the form fields.
Create a screen with a variety of buttons (e.g., raised, flat, icon, and floating action buttons) demonstrating different styles and functionalities.
Implement a table in Flutter displaying a list of products with columns for product name, price, and quantity. Include functionality to sort the table by each column.
Design a form with validation that includes fields for user registration: username, password, confirm password, and email. Display appropriate error messages for invalid inputs. Construct a dynamic form in Flutter that adds a new text field every time the user presses an ‘Add’ button. Include a ‘Submit’ button to display all entered data in a dialog box.
Create a responsive Flutter layout with a table on a large screen (e.g., tablet or desktop) and a list view on smaller screens (e.g., mobile), containing the same data.
Create a multi-step form in Flutter where each step is a different page in a PageView. Include ‘Next’ and ‘Previous’ buttons to navigate between the steps.
Implement a custom button in Flutter that changes its color and elevation when pressed, with a smooth animation transition.
Create a Flutter application that uses a DataTable widget to display user data fetched from a mock JSON API. Include features for pagination and row selection.
Create a sign-in form in Flutter with animated transitions between the ‘Sign In’ and ‘Sign Up’ forms, showcasing a smooth user experience.