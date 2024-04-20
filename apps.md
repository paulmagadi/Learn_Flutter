# PROFILE APP
This guide will walk you through creating a Profile App using Flutter. The app will display user information in a clean and simple layout.

1. Setup and Project Creation

Ensure you have Flutter installed on your system. Create a new Flutter project with this command:

`flutter create profile_app`

2. Designing the User Interface

Replace the lib/main.dart file with the following code to set up the user interface:

```
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const ProfilePage(),
      ),
    );
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
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/33576285?v=4'),
          ),
          const SizedBox(height: 20),
          Text('Bishworaj Poudel',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
              'I love teaching students and helping them to achieve their dreams.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Birth Date'),
                  subtitle: Text('1997-05-14'),
                ),
                ListTile(
                    leading: const Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('brp.com.np'),
                    onTap: () {}),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('bishworajpoudelofficial@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text('Pokhara, Nepal'),
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
                icon: const Icon(Icons.link),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: const Icon(Icons.code),
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
```

3. Run the App

To run the app, execute flutter run in your terminal. Alternatively, in Visual Studio Code, you can start debugging by pressing F5.

`flutter run`

**Challenge**
- Create your profile app with your information and customize the UI to your liking. You can add more details, such as education, work experience, and hobbies.


#vINTEREST CALCULATOR APP
This guide will help you create a Simple Interest Calculator using Flutter. You’ll learn to build a user interface for inputting values, calculate simple interest, and display the result.


1. Setup and Project Creation

Ensure Flutter is installed on your system. Begin by creating a new Flutter project:

`flutter create simple_interest_calculator`

2. Designing the User Interface

Navigate to lib/main.dart and replace its content with the following code to design the interface:


```
import 'package:flutter/material.dart';

void main() => runApp(SimpleInterestApp());

class SimpleInterestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Interest Calculator',
      home: InterestCalculatorScreen(),
    );
  }
}

class InterestCalculatorScreen extends StatefulWidget {
  @override
  _InterestCalculatorScreenState createState() => _InterestCalculatorScreenState();
}

class _InterestCalculatorScreenState extends State<InterestCalculatorScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest Calculator')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildTextField(principalController, 'Principal'),
            _buildTextField(rateController, 'Rate of Interest'),
            _buildTextField(timeController, 'Time in Years'),
            SizedBox(height: 20),
            MaterialButton(
              child: Text('Calculate'),
              onPressed: _calculateInterest,
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
    );
  }

  void _calculateInterest() {
    double principal = double.tryParse(principalController.text) ?? 0.0;
    double rate = double.tryParse(rateController.text) ?? 0.0;
    double time = double.tryParse(timeController.text) ?? 0.0;

    double interest = principal * rate * time / 100;

    setState(() {
      result = 'Simple Interest: \$${interest.toStringAsFixed(2)}';
    });
  }
}
```
**Explanation**

- SimpleInterestApp: The root widget that sets up the MaterialApp.
- InterestCalculatorScreen: A StatefulWidget that contains the UI for the calculator.
- TextEditingController: Controllers for handling text input.
- _calculateInterest: Function to calculate the simple interest.

**User Interface Components**

- Text fields for entering the principal amount, rate of interest, and time.
- A button to trigger the calculation.
- A text widget to display the result.

3. Run the App

To run the application in Visual Studio Code, press F5 or navigate to Run > Start Debugging. Alternatively, use the following command in your terminal:

`flutter run`

**Challenge**

- Create a new screen to display the result in a more visually appealing manner. You can use a Card widget to display the result.

# TODO APP

This guide will walk you through the steps to create a simple Todo application using Flutter. You will learn how to create a basic UI, manage state, and implement basic functionalities.targets

1. Setup and Project Creation

First, make sure you have Flutter installed. Then, create a new Flutter project:

`flutter create todo_app`

2. Designing the User Interface

Now, it’s time to design the user interface. Go to the lib/main.dart file and replace the code with the following:

```
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Todo App',
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => ListTile(title: Text(tasks[index])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTask(),
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTask() {
    // Prompt user to enter a task
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('New Task'),
        content: TextField(controller: controller),
        actions: [
          MaterialButton(
            child: Text('Add'),
            onPressed: () {
              setState(() {
                tasks.add(controller.text);
                controller.clear();
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
```


**Explanation**

- TodoApp: The root widget that sets up the MaterialApp.
- TodoListScreen: A StatefulWidget that manages the list of tasks.
- tasks: A list of strings to hold tasks.
- ListView.builder: Dynamically creates a list of tasks.
- FloatingActionButton: A button to add new tasks.
- _addTask: Function to show a dialog for adding a new task.

3. Run the App

To run the app in vs code, press F5 or go to Run > Start Debugging. You can also run the app using the following command:

`flutter run`

**Challenge**

- Create a delete functionality for the tasks. When a user taps on a task, it should be removed from the lis


# BOOK READER APP
In this guide, you’ll learn how to create an online PDF book reader app using Flutter. This app will allow users to view PDF books from a URL.

1. Setup and Project Creation

To start, ensure Flutter is installed on your system. Create a new Flutter project with the following command:

`flutter create pdf_reader_app`

2. Adding Dependencies

Open your pubspec.yaml file and add the following dependency to include the PDF rendering package:

```
dependencies:
  flutter:
    sdk: flutter
  flutter_pdfview: ^1.0.4+2
  ```

3. Designing the User Interface

Replace the code in lib/main.dart with the following to set up the user interface:

```
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

void main() => runApp(PDFReaderApp());

class PDFReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Reader App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PDFViewPage(),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  final String pdfUrl = 'http://www.africau.edu/images/default/sample.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online PDF Book Reader'),
      ),
      body: PDFView(
        filePath: pdfUrl,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: true,
      ),
    );
  }
}
```


**Explanation**

- PDFReaderApp: The root widget initializing the MaterialApp.
- PDFViewPage: A StatefulWidget that displays the PDF reader.
- PDFView: A widget from flutter_pdfview used to render the PDF.

**User Interface Components**

- A PDFView widget is used to display the PDF file.
- The app bar to provide a title for the app.

4. Run the App

To run the app, use the flutter run command. You can also run the app in Visual Studio Code by pressing F5.

`flutter run`

# TIC TAC TOE GAME

In this guide, we’ll create a simple Tic Tac Toe game using Flutter. We’ll use a GridView.builder to create the game grid and manage the game state.

1. Setup and Project Creation

First, ensure Flutter is installed on your machine. Create a new Flutter project with the following command:

`flutter create tic_tac_toe_game`

2. Designing the User Interface

Edit the lib/main.dart file with the following code to design the game’s interface:

```
import 'package:flutter/material.dart';

void main() => runApp(TicTacToeApp());

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: TicTacToeScreen(),
    );
  }
}

class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  List<String> board = List.filled(9, '', growable: false);
  String currentPlayer = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tic Tac Toe')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: board.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _markCell(index),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  board[index],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _markCell(int index) {
    if (board[index] == '') {
      setState(() {
        board[index] = currentPlayer;
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      });
    }
  }
}
```


**Explanation**

- TicTacToeApp: Sets up the MaterialApp.
- TicTacToeScreen: A StatefulWidget that contains the UI and logic for the game.
- oard: A list that represents the 3x3 grid of the game.
- GridView.builder: Used to create the game grid.
- _markCell: A function to mark a cell with the current player’s symbol.

**Game Logic**

- The game alternates between two players, ‘X’ and ‘O’.
- Players tap on a cell to mark it with their symbol.
- The game continues until all cells are marked.

3. Run the App

To run the application, use the flutter run command, or press F5 in Visual Studio Code to start debugging.

`flutter run`

# QUESTIONS FOR PRACTICE 

1. Create a Counter App that allows users to increment and decrement a counter, introducing you to the fundamentals of state management in Flutter.
2. Create a Note-taking App for writing and saving notes, teaching you about file handling and persistent storage in Flutter.
3. Create a Currency Converter App that converts currencies, involving fetching current exchange rates from an API and applying them in your application.
4. Create a Stopwatch App with functionalities like start, stop, and reset, which will help you learn about timers and updating the UI in real-time in Flutter.
5. Create a Basic Calculator App that performs basic arithmetic operations. This project will help you understand the nuances of layout design and handling user input in Flutter.