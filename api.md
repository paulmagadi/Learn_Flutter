# API AND REST API

**What is an API?**

An API, or Application Programming Interface, is a set of rules for building and interacting with software applications. It defines the methods and data formats for requesting and exchanging information between different software programs, enabling them to communicate and share functionalities efficiently.



**What is REST API?**

A REST API, or Representational State Transfer API, is a type of API that adheres to the REST architectural style. It uses HTTP requests to access and use data, with the operations including GET, POST, PUT, and DELETE.

**Principles of REST**

1. **Client-server architecture**: Separation of client and server functionalities to improve portability and scalability of the application.
2. **Stateless**: Each request from the client to the server must contain all the information the server needs to understand and complete the request.
3. **Cacheable**: Responses must define themselves as cacheable or not to prevent clients from reusing stale or inappropriate data.
4. **Uniform interface**: Simplifies and decouples the architecture, which enables each part to evolve independently.
5. **Layered system**: The client cannot tell whether it is connected directly to the end server or to an intermediary.
6. **Code on demand (optional)**: Servers can temporarily extend or customize the functionality of a client by transferring executable code.

**How Do REST APIs Work?**

When a client requires data or functionality, it sends a request to the server using a URL. The server processes the request, and then sends back a response. This response includes a status line indicating success or failure and the requested resource in the format specified by the request.

**Components of a RESTful API Request**

1. **Resource identifier (URL)**: Uniquely identifies the resource being requested.
2. **HTTP Method**: Defines the operation to be performed (GET, POST, PUT, DELETE, etc.).
3. **Headers**: Provide metadata for the HTTP request, including content type, authentication, etc.
4. **Body (optional)**: Contains data sent with the request (for POST, PUT methods).

**Benefits of RESTful APIs**

- Scalability: Efficient client-server interactions and stateless operations facilitate scalability.
- Flexibility and Independence: The separation of client and server, along with the stateless nature of requests, allows various parts of an application to evolve independently.
- Widespread Use: Given its efficiency, simplicity, and support across programming languages, REST APIs are widely used for web services, including social media platforms, mobile applications, and IoT devices.

**HTTP Status Codes**

- **200 OK**: The request was successful.
- **201 Created**: The request has been fulfilled and resulted in a new resource being created.
- **400 Bad Request**: The server cannot process the request due to a client error.
- **401 Unauthorized**: The request has not been applied because it lacks valid authentication credentials.
- **404 Not Found**: The server cannot find the requested resource.
- **500 Internal Server Error**: The server encountered an unexpected condition that prevented it from fulfilling the request.


INTRODUCTION TO JSON
What is JSON?
JSON (JavaScript Object Notation) is a lightweight data-interchange format. Mostly it is used to transfer data between computers.

Characteristics of JSON
Lightweight: JSON is designed to be easy to use and quick to interpret, making it ideal for data interchange.
Self-describing: JSON structures are clear and understandable, making it easy to read and write.
Language Independent: Although derived from JavaScript, JSON is language-independent, with many programming languages providing support for parsing and generating JSON data.
 Info
Note: JSON files have a .json extension.

Use Cases of JSON
App and Web Development: JSON is extensively used in app and web development for transferring data between a server and a client.
APIs and Web Services: Many web services and APIs exchange data using JSON format due to its straightforward and efficient structure.
JSON Data Types
JSON supports various data types, including:

String: A sequence of characters wrapped in quotes.
Number: Numeric data (integer or floating point).
Boolean: Represents a truth value (true or false).
Null: Represents a null value.
Array: An ordered list of values, enclosed in square brackets [].
Object: A collection of key-value pairs, enclosed in curly braces {}.
JSON Syntax Rules
Data is in name/value pairs.
Curly braces {} hold objects, while square brackets [] hold arrays.
Data is separated by commas, and each name in an object is followed by a colon : which precedes the value.
Example of JSON Data:

{
  "name": "John Doe",
  "age": 30,
  "isEmployed": true,
  "address": {
    "street": "123 Main St",
    "city": "Anytown"
  },
  "phoneNumbers": ["123-456-7890", "456-789-0123"]
}
JSON vs. XML
JSON and XML are both used for data interchange, but JSON is generally preferred due to its simpler syntax, faster parsing, and lighter data format.

Parsing JSON with Dart
To parse JSON in Dart, you can use the jsonDecode function from the dart:convert package.

Example of Parsing JSON in Dart:

import 'dart:convert';

void main() {
  String jsonString = '''
  {
    "name": "John Doe",
    "age": 30,
    "isEmployed": true
  }
  ''';

  var decodedJson = jsonDecode(jsonString);

  print('Name: ${decodedJson['name']}');
  print('Age: ${decodedJson['age']}');
  print('Is Employed: ${decodedJson['isEmployed']}');
}
 Info
Note: Dart’s jsonDecode function returns a Map<String, dynamic>, allowing for easy access to JSON properties.

FETCH DATA FROM REST API
Introduction
Fetching data from a REST API is a fundamental task in modern app development. It allows your app to interact with external data sources, providing dynamic content to users. This guide covers how to fetch data from a REST API in Flutter, including setup, making network requests, and handling responses.

Setup
First, add the http package to your pubspec.yaml file to make HTTP requests:

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
Example 1: Posts Listing App
In this example below, you will learn how to fetch data from a REST API and display it in your Flutter app.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostList(),
    );
  }
}

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<dynamic> _postData = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON.
      setState(() {
        _postData = jsonDecode(response.body);
      });
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: fetchData,
              child: const Text('Fetch Data'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _postData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_postData[index]['title']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Challenges
Create a motivational quotes app that fetches quotes from a REST API and displays them in a list. Here is URL to fetch quotes from:

https://jsonguide.technologychannel.org/quotes.json


POST DATA TO REST API
Introduction
Posting data to a REST API is a common requirement for mobile applications, enabling them to send information to a server for processing or storage. This guide demonstrates how to make POST requests in Flutter, using the http package.

Setup
Ensure the http package is included in your pubspec.yaml for making HTTP requests:

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
Example: Creating a New Post
Here’s how you can post data to create a new post in a JSON placeholder API:

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreatePostExample(),
    );
  }
}

class CreatePostExample extends StatefulWidget {
  @override
  _CreatePostExampleState createState() => _CreatePostExampleState();
}

class _CreatePostExampleState extends State<CreatePostExample> {
  Future<void> createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
        'userId': '1',
      }),
    );

    if (response.statusCode == 201) {
      // If the server returns a 201 CREATED response, then the post was successfully created.
      final responseBody = jsonDecode(response.body);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Post Created"),
            content: Text("New post ID: ${responseBody['id']}"),
            actions: [
              MaterialButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Data Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => createPost('Flutter', 'Posting to API from Flutter'),
          child: const Text('Create Post'),
        ),
      ),
    );
  }
}



PUT DATA TO REST API IN FLUTTER
Introduction
Updating data on a server through a REST API is a common requirement for mobile applications. PUT requests are used for updating existing resources. This tutorial shows how to send PUT requests in Flutter using the http package.

Setup
Add the http package to your pubspec.yaml file:

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
Example: Updating a Post
This example demonstrates updating a post using the JSON placeholder API:

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdatePostExample(),
    );
  }
}

class UpdatePostExample extends StatefulWidget {
  @override
  _UpdatePostExampleState createState() => _UpdatePostExampleState();
}

class _UpdatePostExampleState extends State<UpdatePostExample> {
  Future<void> updatePost(int postId, String title, String body) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
      }),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, then the post was successfully updated.
      final responseBody = jsonDecode(response.body);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Post Updated"),
            content: Text("Post ID: ${responseBody['id']} updated successfully."),
            actions: [
              MaterialButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to update post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put Data Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => updatePost(1, 'Updated Title', 'Updated body text'),
          child: const Text('Update Post'),
        ),
      ),
    );
  }
}


DELETE DATA FROM REST API
Introduction
Deleting data from a REST API is a critical function in many applications, allowing users to remove information from external data sources. This tutorial explains how to implement DELETE requests in Flutter using the http package.

Setup
Ensure you have the http package in your pubspec.yaml file to make HTTP requests:

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
Example: Deleting a Post
This example demonstrates how to delete a post from a JSON placeholder API. We’ll send a DELETE request and handle the response.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeletePostExample(),
    );
  }
}

class DeletePostExample extends StatefulWidget {
  @override
  _DeletePostExampleState createState() => _DeletePostExampleState();
}

class _DeletePostExampleState extends State<DeletePostExample> {
  Future<void> deletePost(int postId) async {
    final response = await http.delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, post is successfully deleted.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Success"),
            content: Text("Post has been deleted successfully."),
            actions: [
              MaterialButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to delete post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Data Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => deletePost(1), // Assuming you want to delete the post with ID 1
          child: const Text('Delete Post'),
        ),
      ),
    );
  }
}



FLUTTER QUIZ APP WITH REST API
Introduction
In this section, you will learn to build a simple quiz app in Flutter using API.

Setup
Ensure your pubspec.yaml includes dependencies for Flutter and the http package for API requests:

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
Main Screen
The main screen displays a play button that navigates to the quiz player screen.

import 'package:flutter/material.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trivia Quiz')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Play'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlayerScreen()),
            );
          },
        ),
      ),
    );
  }
}
Player Screen
The player screen fetches and displays a question, presenting multiple choice answers.


class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  List<Question> questions = [];

  Future<void> fetchQuestions() async {
    final response = await http.get(Uri.parse('https://opentdb.com/api.php?amount=2&category=18&difficulty=easy&type=multiple'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        questions = List<Question>.from(data['results'].map((question) => Question.fromJson(question)));
      });
    } else {
      throw Exception('Failed to load questions');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  void checkAnswer(String selectedAnswer) {
    if (questions[currentQuestionIndex].correctAnswer == selectedAnswer) {
      score++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreScreen(score: score)));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Question')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final question = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Question')),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text(question.question)),
          ...question.answers.map((answer) => ListTile(
            title: Text(answer),
            onTap: () => checkAnswer(answer),
          )).toList(),
        ],
      ),
    );
  }
}
Question Model
Create a model to represent a question and its answers.

class Question {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Question({required this.question, required this.answers, required this.correctAnswer});

  factory Question.fromJson(Map<String, dynamic> json) {
    var incorrectAnswers = List<String>.from(json['incorrect_answers']);
    var correctAnswer = json['correct_answer'];
    incorrectAnswers.add(correctAnswer);
    incorrectAnswers.shuffle();
    return Question(
      question: json['question'],
      answers: incorrectAnswers,
      correctAnswer: correctAnswer,
    );
  }
}
Score Screen
After answering questions, navigate to the results screen to display the score.

import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;

  ScoreScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Score')),
      body: Center(
        child: Text('Your score is: $score', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}


QUESTIONS FOR PRACTICE 10
Flutter Practice Questions
This section includes practice questions designed to enhance your understanding and skills in working with REST APIs in Flutter.

Create a application that fetches data from (https://jsonplaceholder.typicode.com/users) and displays the list of users.
Create a form where users can input their name and message. Post this data to a (https://jsonplaceholder.typicode.com/posts). Display a confirmation message on successful submission.
Create a Weather app in Flutter that fetches weather data from a weather API (e.g., OpenWeatherMap) and displays the current weather information for a specific location.
Write a function in Flutter that converts the JSON data fetched from the REST API into a list of Dart objects.