# STATE MANAGEMENT

State means the data or the properties of an app that can change over time. State management is the process of managing and updating the state in your app.


> Note: Proper state management helps you build scalable and maintainable Flutter apps.

**Why State Management?**

You should use state management in your Flutter apps to:

1. Keep UI and business logic separate.
2. Keep your app’s UI in sync with its data.
3. Update the UI in response to user interactions or other events.
4. Manage app-wide state and data.

**State Management Approaches in Flutter**

Flutter offers multiple ways to manage state, including:

1. **Local State Management**: Using StatefulWidget to manage state within a widget.
2. **Global State Management:** Managing app-wide state using solutions like Provider, Riverpod, Bloc, and more.

**Popular State Management Packages**

Here are some popular state management packages for Flutter:

1. **Provider**: A simple and effective way to manage app-wide state.
2. **Riverpod**: A provider package that offers a more powerful and flexible way to manage state.
3. **Bloc**: A predictable state management library that helps you manage app state and UI separately.
4. **GetX**: A lightweight and fast state management solution for Flutter.


## PROVIDER IN FLUTTER
The Provider package is a recommended way to manage state in Flutter applications. It simplifies data flow in your app and makes it more manageable and scalable. Provider allows for efficient and scalable state management, making it easier to share state across different parts of your Flutter application.

**Why Use Provider?**

- **Simplicity**: Provider simplifies state management in Flutter, making it more readable and maintainable.
- **Scalability**: It supports scalable architecture, making it suitable for small to large applications.
- **Performance**: Provider is optimized for performance, ensuring minimal rebuilds.

*Example 1: Counter App Using Provider*

In this example below, you will learn to create a simple counter app using Provider.

**Step 1: Setup Provider**

First, add the Provider package to your `pubspec.yaml` file.

dependencies:

```
  flutter:
    sdk: 'flutter'
  provider: '^5.0.0'
```

or

`flutter pub add provider`

**Step 2: Create a Counter Model**

Define a model class for your counter logic.

```
import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
 int _count = 0;

 int get count => _count;

 void increment() {
   _count++;
   notifyListeners();
 }
}
```

**Step 3: Use Provider in Your App**

Wrap your app or widget with a ChangeNotifierProvider to provide the counter model.

```
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter App'),
      ),
      body: Center(
        child: Text('Counter: ${counter.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

**Challenge**

- Add a decrement button to the counter app and implement the logic to decrement the counter value.

*Example 2: Todo App Using Provider*

In this example, you will learn to create a simple todo app using Provider.

**Step 1: Create a Todo Model**

Define a model class for your todo logic.

```
import 'package:flutter/foundation.dart';

class Todo extends ChangeNotifier {
  List<String> _todos = [];

  List<String> get todos => _todos;

  void add(String todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void remove(String todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
```

**Step 2: Use Provider in Your App**

Wrap your app or widget with a ChangeNotifierProvider to provide the todo model.

```
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Todo(),
      child: MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Todo App'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Type todo and hit enter',
              contentPadding: EdgeInsets.all(10),
            ),
            controller: todoController,
            onSubmitted: (value) {
              todo.add(value);
              todoController.clear();
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todo.todos[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      todo.remove(todo.todos[index]);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

**Challenge**

- Add edit functionality to the todo app. When a user taps on a todo item, it should be editable.


## QUIZ APP USING PROVIDER

Building a quiz app in Flutter with Provider involves managing the quiz state, including questions, answers, and user scores. This tutorial will guide you through creating a simple quiz app using Provider for state management.

**Step 1: Setup Provider**

First, ensure the Provider package is included in your pubspec.yaml file:

dependencies:

```
  flutter:
    sdk: flutter
  provider: ^5.0.0
```

**Step 2: Define the Quiz Model**

Create a model to represent your quiz. It should include questions, options, and the logic to check answers and track scores.

```
class Quiz with ChangeNotifier {
  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'What is Flutter?',
      'answers': [
        {'text': 'A programming language', 'score': 0},
        {'text': 'A web framework', 'score': 0},
        {'text': 'A mobile UI framework', 'score': 1},
        {'text': 'A game', 'score': 0},
      ],
    },
    {
      'questionText': 'What language is Flutter written in?',
      'answers': [
        {'text': 'Dart', 'score': 1},
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Swift', 'score': 0},
      ],
    },
    // Add more questions here
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore += score;
    _questionIndex++;
    notifyListeners();
  }

  int get questionIndex => _questionIndex;
  int get totalScore => _totalScore;
  List<Map<String, dynamic>> get questions => _questions;

  bool get isQuizFinished => _questionIndex >= _questions.length;

  void resetQuiz() {
    _questionIndex = 0;
    _totalScore = 0;
    notifyListeners();
  }
}
```
**Step 3: Setup Provider in Main**

Wrap your app with ChangeNotifierProvider to provide the quiz model.

```
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quiz.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Quiz(),
      child: MaterialApp(
        home: QuizPage(),
      ),
    );
  }
}
```

**Step 4: Build the Quiz UI**

Create a widget to display the quiz question and options. Use Provider.of to access and display quiz data, and to handle answer selection.

```
class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: quiz.isQuizFinished
          ? Center(
              child: Text('Your score: ${quiz.totalScore}'),
            )
          : Column(
              children: <Widget>[
                Text(quiz.questions[quiz.questionIndex]['questionText']),
                ...(quiz.questions[quiz.questionIndex]['answers'] as List<Map<String, dynamic>>)
                    .map((answer) => ElevatedButton(
                          onPressed: () => quiz.answerQuestion(answer['score']),
                          child: Text(answer['text']),
                        ))
                    .toList(),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: quiz.resetQuiz,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
```

# QUESTIONS FOR PRACTICE 11

1. Explain the concept of state management in Flutter and why it’s important for app development.
2. What is the Provider package in Flutter? Describe how it works for managing state.
3. Create a simple todo list application in Flutter using Provider where users can add, remove, and mark tasks as completed.
4. Discuss the advantages of using Provider over global variables or inherited widgets for state management in Flutter apps.
5. Implement a theme switching feature in a Flutter app using Provider. Users should be able to switch between light and dark themes.
6. Describe the difference between ChangeNotifierProvider and Consumer widgets in the context of the Provider package. Give an example of how each is used.