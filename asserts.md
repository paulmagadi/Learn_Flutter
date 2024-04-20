# ASSETS IN FLUTTER

|Type	|Description|
|---|---|
|Images|	Common formats like JPEG, PNG, GIF, and more.|
|Fonts	|Custom fonts to give your app a unique typography.|
|Audio|	Sound effects and music files.|
|Videos|	Small video files used in the app.|
|Data|	JSON, XML, or other formatted data files.|

>Note: In upcoming sections, you will learn how to use images, fonts, and other files in flutter.

**Why Are Assets Important?**

- **Enhanced User Experience**: Visually rich elements like custom images and fonts help in making your app stand out.
- **Offline Availability**: Since assets are bundled with the app, they’re available even when the user is offline.
- **Performance**: Bundled assets can be quicker to load compared to fetching resources over a network.

**Best Practices for Managing Assets**

1. Optimize Asset Size: Large assets can increase the size of your app. Optimize images and other files to balance quality and size.
2. Organize Wisely: Maintain a clear structure in your assets folder. Group similar types of assets together.
3. Use Descriptive Names: Name your assets descriptively to make them easier to identify and manage.

**Best Way to Organize Assets**

The best way to organize assets is to group them by type. For example, you can create separate folders for images, fonts, audio, and other files. This will make it easier to manage your assets as your app grows.

```
assets/
  fonts/
    Roboto-Regular.ttf
    Roboto-Bold.ttf
  images/
    logo.png
    banner.png
  audio/
    sound.mp3
  data/
    data.json
```


# USE IMAGES IN FLUTTER


Images are a most common type of asset in mobile applications. Here you will learn how to include images in your flutter application. You can use images in your application in following ways:

> Note: You can use diffrent image format like: PNG, JPG, JPEG, GIF, webP, SVG, etc.

**Local Images**

Local images are images that are stored locally in your app. They don’t need the internet to work and load faster.

**Network Images**

Network images are images that are fetched and displayed from the internet in real-time.

**Cached Images**

Cached images are images that are stored locally after the first download. 



### Local Images
Local images are pictures stored in your app. They don’t need the internet to work and load faster. These are ideal for images that don’t change, like logos and icons.

**How to Use Local Images**

**Step 1: Create an Assets Folder**

To use local image, first download it from here, then create an ‘assets’ folder in your project and add the downloaded image to this folder.

**Step 2: Add Images to the pubspec.yaml File**

Now, you need to add images to the pubspec.yaml file. Go to your pubspec.yaml file and add the following code in it:

```
flutter:
  assets:
    - assets/learn_flutter.jpg
```

Save your pubspec.yaml file.

**Step 3: Use the Images**

To display an image in Flutter, you need to use the Image widget. You can use the Image widget in two ways:

```
Image.asset(
  'assets/learn_flutter.jpg',
  width: 150,
  height: 150,
)
Image(
  image: AssetImage('assets/learn_flutter.jpg'),
  width: 150,
  height: 150,
)
```

*Example 1: Profile App*

In this example, we will create a profile app and add a local image to it.


```
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile App',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/learn_flutter.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Tutorial',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'https://flutter-tutorial.net',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```



### Network Images
Network images are images that are fetched and displayed from the internet in real-time. They are important for applications that require constantly updated images, such as social media feeds, news apps, or e-commerce platforms.

**How to Use Network Images**

To display an image in Flutter, you need to use the Image widget. You can use the Image widget in two ways:

```
Image.network(
  'https://picsum.photos/250?image=9',
  width: 150,
  height: 150,
)
Image(
  image: NetworkImage('https://picsum.photos/250?image=9'),
  width: 150,
  height: 150,
)
```

*Example 1: Profile App*

In this example, we will create a profile app and add a network image to it.

```
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Tutorial',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn App Development'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://flutter-tutorial.net/images/learn_flutter.jpg"),
            const SizedBox(height: 10),
            const Text(
              'Flutter Tutorial',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'https://flutter-tutorial.net',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```


### USE CACHED IMAGES IN FLUTTER

Cached images are images that are stored locally after the first download. Here are some of the benefits of using cached images in your Flutter application:

- Faster Loading Times
- Less Network Usage
- Improved User Experience

**How to Use Cached Images in Flutter**

To use the cached_network_image package, you need to add cached_network_image package in your flutter project. Open your terminal and go to your project directory and execute the following command:

`flutter pub add cached_network_image`

**Import the Package**

Now, you need to import the cached_network_image package in your flutter application. To import the cached_network_image package, open your `main.dart` file and add the following import statement:

`import 'package:cached_network_image/cached_network_image.dart';`

**Use the Package**

Now, you can use the cached_network_image package in your flutter application. To use the cached_network_image package, open your main.dart file and add the following code in it:

```
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Use Cached Images in Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Use Cached Images in Flutter'),
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://picsum.photos/250?image=9',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
```

**In this code:**

imageUrl is the URL of the image you want to cache.

placeholder is a widget displayed while the image is loading.

errorWidget is displayed in case of any loading error.


### USE LOCAL FONTS IN FLUTTER

In this section, you will learn to use local fonts in your flutter application with the help of real-world example. Here are the steps to use local fonts in your app:

**Step 1: Add the Font Files**

To use local fonts in your app, the first step is to add the font files in your flutter project. You can download sample font files from here or you can use your own font files.


>Note: Before downloading the font files, make sure you have proper license to use it.

**Step 2: Add Font Files to Your Project**

In project folder, create a new folder called assets and inside assets folder, create another folder called fonts. Now, place all the font files inside the fonts folder. Here is preview of the folder structure:

```
fonts_in_flutter/
│
├── assets/
│   └── fonts/
│       ├── Roboto-Black.ttf
│       ├── Roboto-BlackItalic.ttf
│       ├── Roboto-Bold.ttf
│       ├── Roboto-BoldItalic.ttf
│       ├── Roboto-Italic.ttf
│       ├── Roboto-Light.ttf
│       ├── Roboto-LightItalic.ttf
│       ├── Roboto-Medium.ttf
│       ├── Roboto-MediumItalic.ttf
│       ├── Roboto-Regular.ttf
│       ├── Roboto-Thin.ttf
│       └── Roboto-ThinItalic.ttf
│
├── lib/
│   └── main.dart
```

**Step 3: Add Font Files to pubspec.yaml File**

Now, you need to add font files to the pubspec.yaml file. Go to your pubspec.yaml file and add the following code in it:

```
flutter:
  fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Black.ttf
        - asset: assets/fonts/Roboto-BlackItalic.ttf
          style: italic
        - asset: assets/fonts/Roboto-Bold.ttf
        - asset: assets/fonts/Roboto-BoldItalic.ttf
          style: italic
        - asset: assets/fonts/Roboto-Italic.ttf
          style: italic
        - asset: assets/fonts/Roboto-Light.ttf
        - asset: assets/fonts/Roboto-LightItalic.ttf
          style: italic
        - asset: assets/fonts/Roboto-Medium.ttf
        - asset: assets/fonts/Roboto-MediumItalic.ttf
          style: italic
        - asset: assets/fonts/Roboto-Regular.ttf
        - asset: assets/fonts/Roboto-Thin.ttf
        - asset: assets/fonts/Roboto-ThinItalic.ttf
          style: italic
```

**Step 4: Use the Fonts**

To use the fonts, you need to use the TextStyle widget. Here is how you can use the fonts:

``
Text(
  'I am using local font',
  style: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    fontWeight: FontWeight.w900,
  ),
)
``


**Challenge**

- Create profile app with your photo, name, address, and phone number. Use local fonts to style the text.



# USE GOOGLE FONTS IN FLUTTER
In this section, you will learn how to use Google fonts in your flutter application with the help of examples.


To use Google fonts in your flutter application, follow the below steps:

1. Add google_fonts package in your flutter project.
2. Use google fonts in your flutter application.
3. Add google_fonts Package

To use Google fonts in your application, you need to add the google_fonts plugin. Open terminal at your project folder and execute the following command:

`flutter pub add google_fonts`

4. Run Pub Get**

After saving the `pubspec.yaml` file, run `pub get` in your terminal to fetch the package:

  `flutter pub get`

5. Import the google_fonts Package

Now, you need to import the google_fonts package in your flutter application. To import the google_fonts package, open your main.dart file and add the following import statement:

```
import 'package:google_fonts/google_fonts.dart';
Use the Google Fonts
Now, you can use the Google fonts in your flutter application. To use the Google fonts, open your main.dart file and add the following code in it:

Text(
  'Hello I am John Doe',
  style: GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
  ),
)
```


**Specifying Font Weights and Styles**

If you want to use specific font weights or styles that are not the default, you can specify them when you use the font.

```
style: GoogleFonts.roboto(
  fontWeight: FontWeight.w700, // Bold
  fontStyle: FontStyle.italic, // Italic
),
```

**Full Example**

To use the Google fonts in your flutter application, open your main.dart file and add the following code in it:

```
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Use Google Fonts in Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Google Fonts in Flutter'),
          ),
          body: Center(
            child: Text(
              'Hello I am John Doe',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ),
        ));
  }
}
```


# USE LOCAL JSON IN FLUTTER

In this section, you will learn how to use local JSON in your flutter application with the help of real-world example. Before we start, make sure you have basic knowledge of JSON. If you don’t know start from here.

*Example 1: Profile App*

In this example, you will learn to create a profile app using local JSON. Here are the steps to create a app:

**Step 1: Add the JSON File**

To use local JSON in your app, the first step is to add the JSON file in your project folder/assets/data. You can download sample JSON file from here or you can use your own JSON file.

**Step 2: Add JSON File to Your Project**

In project folder, create a new folder called assets and inside assets folder, create another folder called data. Now, place the JSON file inside the data folder. Here is preview of the folder structure:

```
json_in_flutter/
│
├── assets/
│   └── data/
│       └── info.json
│
├── lib/
│   └── main.dart
```

**Step 3: Add JSON File to pubspec.yaml File**

Now, you need to add JSON file to the pubspec.yaml file. Go to your pubspec.yaml file and add the following code in it:

```
flutter:
  assets:
    - assets/data/info.json
```

**Step 4: Create Model Class**

Now, you need to create a model class for the JSON data. Create a new file called person.dart inside lib folder and add the following code in it:

```
class Person {
  final String name;
  final String address;
  final int age;
  final String image;
  final String description;

// Constructor
  Person(
      {required this.name,
      required this.address,
      required this.age,
      required this.image,
      required this.description});

// Convert JSON to Person Object
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      address: json['address'],
      age: json['age'],
      image: json['image'],
      description: json['description'],
    );
  }
}
```


**Step 5: Load and Decode the JSON File**

Now create a new file called localservice.dart inside lib folder and add the following code in it:

```
import 'dart:convert';
import 'package:flutter/services.dart';
import 'person.dart';

class LocalService {
    // Load and decode the JSON File
  Future<String> _loadPersonAsset() async {
    return await rootBundle.loadString('assets/data/info.json');
  }

  // Load and decode the JSON File  
  Future<Person> loadPerson() async {
    String jsonString = await _loadPersonAsset();
    // json.decode() is used to convert JSON String to JSON Map
    final jsonResponse = json.decode(jsonString);
    return Person.fromJson(jsonResponse);
  }
}
```

**Step 6: Display the JSON Data**

Now, you can use the LocalService class to display the JSON data. Here is how you can use it on your main.dart file:

```
import 'package:flutter/material.dart';
import 'localservice.dart';
import 'person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'JSON in Flutter';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: FutureBuilder(
          future: LocalService().loadPerson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Person person = snapshot.data as Person;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(person.image),
                            radius: 50.0,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            person.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            person.address,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Age: ${person.age}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            person.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
```


**Challenge**

- Create quote app using local JSON. Use this JSON file to display the quotes.


# USE ONLINE JSON IN FLUTTER

In this section, you will learn how to use online JSON in your flutter application with the help of real-world example. Before we start, make sure you have basic knowledge of JSON. If you don’t know start from here.

*Example 1: Profile App*

In this example, you will learn to create a profile app using online JSON. Here are the steps to create a app:

**Step 1: Install http Package**

To use online JSON in your app, the first step is to add the http package in your project. Open terminal at your project folder and execute the following command:

`flutter pub add http`

**Step 2: Import the http Package**

Now, you need to import the http package in your flutter application. To import the http package, open your main.dart file and add the following import statement:

`import 'package:http/http.dart' as http;`

**Step 3: Create Model Class**

Now, you need to create a model class for the JSON data. Create a new file called person.dart inside lib folder and add the following code in it:

```
class Person {
  final String name;
  final String address;
  final int age;
  final String image;
  final String description;

// Constructor
    Person(
        {required this.name,
        required this.address,
        required this.age,
        required this.image,
        required this.description});

// Convert JSON to Person Object
    factory Person.fromJson(Map<String, dynamic> json) {
        return Person(
        name: json['name'],
        address: json['address'],
        age: json['age'],
        image: json['image'],
        description: json['description'],
        );
    }
}
```

**Step 4: Load and Decode the JSON File**

Now create a new file called onlineservice.dart inside lib folder and add the following code in it:

```
import 'dart:convert';
import 'person.dart';

class OnlineService {
    // Load and decode the JSON File
    Future<Person> loadPerson() async {
        final response = await http.get(Uri.parse('https://jsonguide.technologychannel.org/info.json'));
        if (response.statusCode == 200) {
            // json.decode() is used to convert JSON String to JSON Map
            final jsonResponse = json.decode(response.body);
            return Person.fromJson(jsonResponse);
        } else {
            throw Exception('Failed to load data from server');
        }
    }
}
```

**Step 5: Display the JSON Data**

Now, you can use the OnlineService class to display the JSON data. Here is how you can use it on your main.dart file:

```
import 'package:flutter/material.dart';
import 'onlineservice.dart';
import 'person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'JSON in Flutter';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: FutureBuilder(
          future: OnlineService().loadPerson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Person person = snapshot.data as Person;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(person.image),
                            radius: 50.0,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            person.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            person.address,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Age: ${person.age}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            person.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
```


**Challenge**

- Create quote app using online JSON. Use this JSON file to display the quotes.


# CREATE QUOTE APP IN FLUTTER

In this section, you will learn to create a quote app using online JSON in flutter. Before we start, make sure you have basic knowledge of JSON. If you don’t know start from here.

*Quote JSON Link*

You can use JSON file from here. It contains 50+ quotes. Here is preview for first 3 quotes.

```
[
  {
    "text": "The only people who never fail are those who never try.",
    "from": "Ilka Chase"
  },
  {
    "text": "Failure is just another way to learn how to do something right.",
    "from": "Marian Wright Edelman"
  },
  {
    "text": "I failed my way to success.",
    "from": "Thomas Edison"
  },
]
```

**How to Create Quote App**

Now you will learn to create a quote app using online JSON. Here are the steps to create a app:

**Step 1: Install http Package**

To use online JSON in your app, the first step is to add the http package in your project. Open terminal at your project folder and execute the following command:

`flutter pub add http`

**Step 2: Import the http Package**

Now, you need to import the http package in your flutter application. To import the http package, open your main.dart file and add the following import statement:

`import 'package:http/http.dart' as http;`

**Step 3: Create Model Class**

Now, you need to create a model class for the JSON data. Create a new file called quote.dart inside lib folder and add the following code in it:

```
class Quote {
  final String text;
  final String from;

  // Constructor
  Quote({required this.text, required this.from});

  // Convert JSON to Quote Object
  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      text: json['text'],
      from: json['from'],
    );
  }
}
```

**Step 4: Load and Decode the JSON File**
Now create a new file called onlineservice.dart inside lib folder and add the following code in it:

```
import 'dart:convert';
import 'quote.dart';

class OnlineService {
  // Load and Decode JSON
  Future<List<Quote>> getQuotes() async {
    // Load JSON
    final response = await http.get(Uri.parse('https://jsonguide.technologychannel.org/quotes.json'));

    // Decode JSON
    final json = jsonDecode(response.body).cast<Map<String, dynamic>>();

    // Convert JSON to Quote
    return json.map<Quote>((json) => Quote.fromJson(json)).toList();
  }
}
```

**Step 5: Create Quote Widget**

Now, you need to create a widget to display the quote. Create a new file called quote_widget.dart inside lib folder and add the following code in it:

```
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteWidget extends StatelessWidget {
  final Quote quote;

  const QuoteWidget({Key? key, required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '- ${quote.from}',
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
```

**Step 6: Display the JSON Data**

Now, you can use the OnlineService class to display the JSON data. Here is how you can use it on your main.dart file:

```
import 'package:flutter/material.dart';
import 'onlineservice.dart';
import 'quote.dart';
import 'quote_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<List<Quote>>(
          future: OnlineService().getQuotes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            if (snapshot.hasData) {
              final quotes = snapshot.data!;
              return ListView.builder(
                itemCount: quotes.length,
                itemBuilder: (context, index) {
                  return QuoteWidget(quote: quotes[index]);
                },
              );
            }
            return const Center(child: Text('No data available'));
          },
        ),
      ),
    );
  }
}
```


**Challenge**

- Now create a similar app using local JSON. You can use JSON file from here.


# USE LOCAL AUDIO IN FLUTTER

In this section, you will learn to use local audio in your flutter application with the help of real-world example. You will create a simple audio player app. Here are the steps to create a app:

**Step 1: Add Audio File To Your Project**

You can download sample audio file from here or you can use your own audio file. Place the audio file inside assets/audio with the name sound.mp3.

**Step 2: Install audioplayers Package**

To use local audio in your app, the first step is to add the audioplayers package in your project. Open terminal at your project folder and execute the following command:

`flutter pub add audioplayers`

**Step 3: Update Pubspec.yaml Assets**

Now, you need to update the pubspec.yaml file. Go to your pubspec.yaml file and add the following code in it:

```
flutter:
  assets:
    - assets/audio/sound.mp3
```

**Step 4: Import the audioplayers Package**

Now, you need to import the audioplayers package in your flutter application. To import the audioplayers package, open your main.dart file and add the following import statement:

`import 'package:audioplayers/audioplayers.dart';`

**Step 5: Code for Audio Player**

Now, you need to create a audio player widget. Open main.dart file and add the following code in it:

```
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

// Stateful widget to handle audio playback.
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState(); // State creation.
}

class _MyAppState extends State<MyApp> {
  final AudioPlayer audioPlayer = AudioPlayer(); // Audio player instance.

  @override
  void dispose() {
    audioPlayer.dispose(); // Release audio player resources.
    super.dispose();
  }

  // Plays an audio file.
  void playAudio() async {
    await audioPlayer.play(AssetSource('audio/sound.mp3'));
  }

  // Stops the audio playback.
  void stopAudio() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    // Builds the app's UI.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Audio Player Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: playAudio, child: const Text('Play Audio')),
              ElevatedButton(
                  onPressed: stopAudio, child: const Text('Stop Audio')),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Challenge**

- Create a simple audio player app which can play and stop the audio file from the following URL:

https://raw.githubusercontent.com/Flutter-Tutorial-Website/SimpleFlutterAudioPlayer/master/assets/audio/sound.mp3

You can simply create `playAudioOnline()` method and call it on button press. Here is the code for playAudioOnline() method:

```

void playAudioOnline() async {
    await audioPlayer.play(UrlSource('https://raw.githubusercontent.com/Flutter-Tutorial-Website/SimpleFlutterAudioPlayer/master/assets/audio/sound.mp3'));
  }
```

# QUESTIONS FOR PRACTICE 

1. Create a Flutter app that loads and displays an image from the assets folder. Ensure the image scales correctly in both portrait and landscape modes.
2. Create a Flutter application that fetches and displays an image from a URL. Implement error handling for scenarios where the image cannot be loaded.
3. Create a Flutter app that caches images from the internet and loads them from the cache on subsequent launches for faster performance.
4. Create a Flutter application that uses a custom font from the local assets and apply it to the entire app text.
5. Create a Flutter app that dynamically fetches and applies a Google Font to a selected text widget.
6. Write a Flutter application that reads a local JSON file from the assets folder and displays its contents in a user-friendly format.
7. Create a Flutter app that fetches JSON data from an online source and displays it in a ListView.
8. Create a Flutter app that displays a list of quotes. The quotes should be stored locally and should include functionality to add, delete, and view quotes.
9. In a Flutter app, create a feature to switch between two sets of assets (like images and fonts) based on user selection or a toggle switch.
10. Build a Flutter application that combines local and network images in a grid layout, demonstrating effective asset management in Flutter.