LIST VIEW IN FLUTTER
ListView In Flutter
ListView is a type of widget in Flutter used to display a list of items in a scrollable column or row. It’s similar to how you scroll through your contacts on a phone or through posts on a social media app. ListView is flexible and can be used for simple lists as well as more complex ones with different types of items.

Example 1: To Do List App
In this example below, you will learn how to create a simple to-do list app using ListView. Here’s how you can make a list with titles and subtitles for each task.

ListView(
  children: [
    ListTile(
      title: Text('Go to Gym'),
      subtitle: Text('Go to Gym at 6:00 AM'),
    ),
    ListTile(
      title: Text('Go to College'),
      subtitle: Text('Go to College at 8:00 AM'),
    ),
    ListTile(
      title: Text('Go to Office'),
      subtitle: Text('Go to Office at 11:00 AM'),
    ),
    // Add more ListTiles as needed
  ],
)
 Info
Note: ListTiles are a convenient way to create lists of items. They provide a leading icon, a title, and a subtitle. You can also add trailing icons if needed.

Example 2: Contact List App
In this example below, you will learn how to create a simple contact list using ListView with icons, names, numbers, and a call icon.

ListView(
  children: [
    ListTile(
      leading: Icon(Icons.person),
      title: Text('John Doe'),
      subtitle: Text('555-555-5555'),
      trailing: Icon(Icons.call),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Jane Doe'),
      subtitle: Text('555-555-5555'),
      trailing: Icon(Icons.call),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('John Smith'),
      subtitle: Text('555-555-5555'),
      trailing: Icon(Icons.call),
    ),
  ],
)
Example 3: Image Gallery App
In this example below, you will learn how to create a photo gallery app using ListView. You can change the scroll direction to horizontal to create a horizontal photo gallery.

ListView(
  // try changing to `scrollDirection: Axis.horizontal` to see horizontal list
    scrollDirection: Axis.horizontal,
    children: [
      Image.network('https://picsum.photos/250?image=9'),
      Image.network('https://picsum.photos/250?image=10'),
      Image.network('https://picsum.photos/250?image=11'),
      Image.network('https://picsum.photos/250?image=12'),
      Image.network('https://picsum.photos/250?image=13'),
      Image.network('https://picsum.photos/250?image=14'),
      Image.network('https://picsum.photos/250?image=15'),
    ],
)
Example 4: Reverse List
In this example below, you will learn how to reverse a list using ListView. You can use the reverse property to reverse the order of the list.

ListView(
  reverse: true,
  children: [
    ListTile(
      title: Text('Go to Gym'),
      subtitle: Text('Go to Gym at 6:00 AM'),
    ),
    ListTile(
      title: Text('Go to College'),
      subtitle: Text('Go to College at 8:00 AM'),
    ),
    ListTile(
      title: Text('Go to Office'),
      subtitle: Text('Go to Office at 11:00 AM'),
    ),
    // Add more ListTiles as needed
  ],
)
Challenge
Create a restaurant app that displays a list of dishes. Each dish should have a name, description, and price.


GRIDVIEW IN FLUTTER
GridView In Flutter
In Flutter, GridView is a versatile widget that allows the creation of grid layouts. It’s an essential widget when you need to display items in a two-dimensional list. GridView is ideal for situations where you want to present data in a visually appealing and organized manner, such as in photo galleries, product listings, or dashboard menus.

Example 1: Photo Gallery App
In this example, you will build a simple photo gallery app using GridView, demonstrating how to display a collection of images in a grid format.

GridView.count(
  crossAxisCount: 3,
  children:[
    Image.network('https://picsum.photos/200?image=25'),
    Image.network('https://picsum.photos/200?image=26'),
    Image.network('https://picsum.photos/200?image=27'),
    Image.network('https://picsum.photos/200?image=28'),
    Image.network('https://picsum.photos/200?image=29'),
    Image.network('https://picsum.photos/200?image=30'),
    // Add more images as needed
  ],
)
Example 2: Ecommerce Product Listing Page
In this example below, you will learn how to create an ecommerce product listing page using GridView, displaying products in a grid with their images and details.

GridView.count(
  crossAxisCount: 2,
  children:[
    Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
          const Text('Product 1'),
          const Text('Price: \$100'),
        ],
      ),
    ),
    Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
          const Text('Product 2'),
          const Text('Price: \$150'),
        ],
      ),
    ),
    // Add more product cards as needed
  ],
)
Example 3: Simple Home Dashboard App With Menu Categories
In this example below, you will learn how to create a simple home dashboard app with menu categories using GridView.

GridView.count(
            crossAxisCount: 2,
            children: [
              MaterialButton(
                onPressed: () {/* Handle click */},
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.category),
                    Text('Category 1'),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {/* Handle click */},
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.category),
                    Text('Category 2'),
                  ],
                ),
              ),
              // Add more categories as needed
            ],
)
Challenge
Create a simple photo gallery app using GridView. Display images in a grid format with 3 columns and 5 rows.


LISTVIEW.BUILDER IN FLUTTER
Introduction
ListView.builder is a highly efficient way to create lists that display a large number of items. It creates items as they’re scrolled onto the screen, which is ideal for lists with a large number of items.

 Info
Note: Before learning ListView.builder, make sure you understand the basics of ListView.

Example 1: Basic ListView.builder
In this example below, you will learn how to create a simple list of items using ListView.builder.

ListView.builder(
  itemCount: 20,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },
)
Example 2: To-Do List App
In this example below, you will learn how to create a simple to-do list app using ListView.builder.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> tasks = [
    'Go to Gym',
    'Go to College',
    'Go to Office',
    // Add more tasks
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('To-Do List')),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(tasks[index]),
            );
          },
        ),
      ),
    );
  }
}
Example 3: To-Do List App Using Using a Data Model
In this example below, you will learn how to create a to-do list app using Data Model and ListView.builder.

Step 1: Define the Data Model
First, we define a simple data model for a task.

class Task {
  final String title;
  final String subtitle;

  Task({
    required this.title,
    required this.subtitle,
  });
}
 Info
Note: Data Model is a simple class that defines the structure of your data. This allows for a more structured and detailed representation of your data.

Step 2: Create Sample Data
Next, we create a list of sample tasks.

List<Task> tasks = [
  Task(
    title: 'Go to Gym',
    subtitle: 'Go to Gym at 6:00 AM',
  ),
  Task(
    title: 'Go to College',
    subtitle: 'Go to College at 8:00 AM',
  ),
  Task(
    title: 'Go to Office',
    subtitle: 'Go to Office at 11:00 AM',
  ),
  // Add more sample tasks
];
Step 3: Use ListView.builder
Now, we use ListView.builder to build the list.

ListView.builder(
  itemCount: tasks.length,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text(tasks[index].title),
      subtitle: Text(tasks[index].subtitle),
    );
  },
)
Example 4: Social Media Feed App
In this example below, you will learn how to create a social media feed app using ListView.builder. Click on run online button to see the output.

Step 1: Define the Data Model
First, we define a simple data model for a post.

class Post {
  final String username;
  final String userImageUrl;
  final String timestamp;
  final String contentText;
  final String contentImageUrl;

  Post({
    required this.username,
    required this.userImageUrl,
    required this.timestamp,
    required this.contentText,
    required this.contentImageUrl,
  });
}
Step 2: Create Sample Data
Next, we create a list of sample posts.

List<Post> posts = [
  Post(
    username: 'John Doe',
    userImageUrl: 'https://picsum.photos/250?image=237',
    timestamp: '2h',
    contentText: 'Enjoying the beautiful sunset at the beach!',
    contentImageUrl: 'https://picsum.photos/250?image=51',
  ),
  Post(
    username: 'Mark Doe',
    userImageUrl: 'https://picsum.photos/250?image=238',
    timestamp: '1d',
    contentText: 'Just got back from a fun vacation in the mountains.',
    contentImageUrl: 'https://picsum.photos/250?image=52',
  ),
  // Add more sample posts
];
Step 3: Build the ListView
Now, we use ListView.builder to build the list.

ListView.builder(
  itemCount: posts.length,
  itemBuilder: (BuildContext context, int index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(posts[index].userImageUrl)),
            title: Text(posts[index].username),
            subtitle: Text(posts[index].timestamp),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(posts[index].contentText),
          ),
          Image.network(posts[index].contentImageUrl),
        ],
      ),
    );
  },
)
Challenge
Create app using ListView.builder to display a scrollable list containing the names of your 10 friends, with each name as a separate item.



GRIDVIEW.BUILDER IN FLUTTER
Introduction
GridView.builder is an efficient way to create grid layouts that display a large number of items. It dynamically creates grid items as they become visible on the screen, making it ideal for grid layouts with numerous items.

 Info
Note: Before learning GridView.builder, make sure you understand the basics of GridView.

Example 1: Basic GridView.builder
In this example below, you will learn how to create a basic grid layout using GridView.builder.

GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2), // Number of columns
  itemCount: 20,
  itemBuilder: (BuildContext context, int index) {
    return GridTile(
      child: Center(
        child: Text('Item $index'),
      ),
    );
  },
)
Example 2: Photo Gallery App
In this example below, you will learn how to create a simple photo gallery app using GridView.builder.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/250?image=237',
    'https://picsum.photos/250?image=238',
    'https://picsum.photos/250?image=239',
    'https://picsum.photos/250?image=240',
    'https://picsum.photos/250?image=241',
    'https://picsum.photos/250?image=242',
    'https://picsum.photos/250?image=243',
    'https://picsum.photos/250?image=244',
    // Add more image URLs
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Photo Gallery')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3), // Number of columns
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(imageUrls[index]);
          },
        ),
      ),
    );
  }
}
Example 3: Create Tic-Tac-Toe Board
In this example below, you will learn how to create a Tic-Tac-Toe board using GridView.builder.

GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3), // Number of columns
  itemCount: 9,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: index % 2 == 0
            ? const Text('X')
            : const Text('O'),
      ),
    );
  },
)
Example 4: Product Catalog App Using Data Model
In this example below, you will learn how to create a product catalog app using a Data Model and GridView.builder.

Step 1: Define the Data Model
First, we define a simple data model for a product.

class Product {
  final String title;
  final String subtitle;
  final String imageUrl;

  Product({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}
Step 2: Create a List of Products
Create a list of sample products.

List<Product> products = [
  Product(
    title: 'Product 1',
    subtitle: 'Subtitle 1',
    imageUrl: 'https://picsum.photos/250?image=237',
  ),
  Product(
    title: 'Product 2',
    subtitle: 'Subtitle 2',
    imageUrl: 'https://picsum.photos/250?image=238',
  ),
  Product(
    title: 'Product 3',
    subtitle: 'Subtitle 3',
    imageUrl: 'https://picsum.photos/250?image=239',
  ),
  // Add more sample products
];
Step 3: Build the GridView
Use GridView.builder to create the product grid.

GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2), // Number of columns
  itemCount: products.length,
  itemBuilder: (BuildContext context, int index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(products[index].imageUrl),
          Text(products[index].title),
          Text(products[index].subtitle),
        ],
      ),
    );
  },
)
Challenge
Create chess board using GridView.builder. Make sure to use the following colors for the tiles:

- White: #F0D9B5
- Black: #B58863


CREATE TIC TAC TOE GAME
Tic Tac Toe Game Using Flutter
In this guide, we’ll create a simple Tic Tac Toe game using Flutter. We’ll use a GridView.builder to create the game grid and manage the game state.

1. Setup and Project Creation
First, ensure Flutter is installed on your machine. Create a new Flutter project with the following command:

flutter create tic_tac_toe_game
2. Writing the Code
Open the main.dart file. This is where your Flutter application starts. Replace the existing code with:

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TicTacToePage(),
    );
  }
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  late List<String> board;
  late String currentPlayer;
  late String winner;
  late bool isDraw;

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    board = List.generate(9, (_) => '');
    currentPlayer = 'X';
    winner = '';
    isDraw = false;
  }

  void _handleTap(int index) {
    if (board[index] != '' || winner != '') return; // Prevent overwriting a cell and ignore taps after game over

    setState(() {
      board[index] = currentPlayer;
      if (_checkWinner(currentPlayer)) {
        winner = currentPlayer;
      } else if (_checkDraw()) {
        isDraw = true;
      } else {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
    });
  }

  bool _checkWinner(String player) {
    // Check rows, columns and diagonals for a win
    for (int i = 0; i < 3; i++) {
      if (board[i * 3] == player && board[i * 3 + 1] == player && board[i * 3 + 2] == player) {
        return true;
      }
      if (board[i] == player && board[i + 3] == player && board[i + 6] == player) {
        return true;
      }
    }
    if (board[0] == player && board[4] == player && board[8] == player) {
      return true;
    }
    if (board[2] == player && board[4] == player && board[6] == player) {
      return true;
    }
    return false;
  }

  bool _checkDraw() {
    return board.every((cell) => cell != '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          winner != ''
              ? Text('Winner: $winner', style: const TextStyle(fontSize: 30))
              : isDraw
                  ? const Text('Draw', style: TextStyle(fontSize: 30))
                  : Text('Current Player: $currentPlayer', style: const TextStyle(fontSize: 30)),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return GridTile(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: MaterialButton(
                      onPressed: () => _handleTap(index),
                      child: Text(board[index], style: const TextStyle(fontSize: 40)),
                    ),
                  ),
                );
              },
            ),
          ),
          MaterialButton(
            child: const Text('Restart Game'),
            onPressed: () {
              setState(() {
                _initializeGame();
              });
            },
          ),
        ],
      ),
    );
  }
}
Run the App
To run the application, use the flutter run command, or press F5 in Visual Studio Code to start debugging.



List and Grid Flutter Practice Questions
Create a Flutter application that displays a list of 10 images of puppies in a ListView.
Create a Todo List application that displays a list of todos in a ListView.
Create a Flutter application that shows a Chessboard using GridView.
Create a simple ListView in Flutter that displays a list of ten strings. Each item in the list should be displayed as a text widget.
Display a list of numbers from 1 to 50. Each number should be shown in a separate list item.
Create a ListView.builder that displays a list of names. If a name starts with the letter ‘A’, it should be displayed with a green color; otherwise, it should be displayed in red.
Create a horizontal ListView that displays a list of images. Ensure that the ListView scrolls horizontally.
Implement a ListView inside another ListView. The outer ListView should have three items, and each item should contain an inner ListView with five text items.
Implement a GridView with a two-column layout. Populate it with 20 square containers, each with a unique color or decoration.
Use GridView.builder to create a grid of items where each item has a different aspect ratio. For example, alternate between items with a 1:1 and 2:1 aspect ratio
Create a GridView where the number of columns changes based on the device orientation (portrait or landscape).
Implement an infinite scrolling ListView using ListView.builder, where more items are loaded when the user scrolls to the end of the list.
Create a GridView.builder that displays a grid of items. When an item is tapped, it should display an alert dialog with the item’s index or other details.