# NAVIGATION IN FLUTTER
Navigation is process of moving between different screens (also known as routes or pages) within an app. It’s like going from the Home screen of a app to the Contact screen.

### How to Navigate in Flutter?
There are different ways to navigate between screens in Flutter. They are:

1. Using the Navigator
2. Using Named Routes
3. Using Router

#### 1. Using Navigator
Here’s a simple way to navigate to a new screen using Navigator. You will learn more about navigator in the next section.

```
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

### 2. Using Named Routes
Named routes are routes that are named using a string. Here’s how to use named routes to navigate to a new screen.

```
// First, ensure you have defined the named route in your MaterialApp widget.
MaterialApp(
  routes: {
    '/': (context) => FirstScreen(),
    '/second': (context) => SecondScreen(),
  },
);

// Then, use Navigator.pushNamed to navigate to the second screen.
Navigator.pushNamed(context, '/second');
```

### 3. Using Router
For simple apps, you can use Navigator to move between screens. If your app needs advance navigation, you can use a Router package like (go_router).

**Conclusion**

In conclusion, if you are making simple apps, use Navigator to move between screens. If you are making complex apps, consider using a Router package like go_router.


# MOVE TO ANOTHER SCREEN IN FLUTTER
Flutter provides several ways to navigate between screens, but the most common method is using Navigator. Here is sample code to move to another screen:

```
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

*Example 1: Move To Second Screen*

Flutter provides the Navigator class to manage routes. Here’s a simple way to navigate to a new screen:

**Step 1: Define a Screen**

First, define a new screen as a StatelessWidget or StatefulWidget:

```
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("Welcome to the second screen!"),
      ),
    );
  }
}
```

**Step 2: Moving to the New Screen**

Use the Navigator.push method to move to the new screen:

```
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

## Navigating Back
To return to the previous screen, use the Navigator.pop method:

`Navigator.pop(context);`

**Challenge**

- Create two screens, HomeScreen and AboutScreen. When you click a button on the home screen, navigate to the about screen.


## MOVE USING NAMED ROUTES
Named routes provide a clear and easy way to manage navigation between screens. Instead of navigating directly to a widget, you use a string identifier (the route’s name) to tell Flutter which screen to show.

`Navigator.pushNamed(context, '/routeName')`

*Example 1: Move To Another Screen Using Named Routes*

In this example below, there is HomeScreen and ProfileScreen. When you click a button on the home screen, it navigates to the profile screen. First, let’s create a MaterialApp with named routes.

**Step 1: Define Named Routes**

Define the named routes in the MaterialApp widget:

```
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/profile': (context) => ProfileScreen(),
  },
);
```

**Home Screen (HomeScreen)**

This is the main screen of the application.

```
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Profile Page'),
          onPressed: () {
            // Navigation Code Here
          },
        ),
      ),
    );
  }
}
```

**Profile Screen (ProfileScreen)**

A page displaying profile information.

```
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Text("Welcome to the Profile Page!"),
      ),
    );
  }
}
```

## Navigate To The New Screen
When the button is pressed, HomeScreen should navigate to ProfileScreen. Use the `Navigator.pushNamed `method to move to the new screen:

`Navigator.pushNamed(context, '/profile');`



# PASS DATA TO OTHER SCREEN

In previous section, you learned how to move between screens. In this section, you will learn how to send data between screens. This is useful when you want to pass data from one screen to another, such as a user’s name, email, or any other information.

**Example 1: Greet User**

In this example, you will learn to greet the user by passing their name to the new screen. First, create a simple app with two screens: HomeScreen and GreetScreen.

**Step 1: Define Home Screen**

This is the main screen of the application. It has a text field to enter the user’s name and a button to navigate to the greet screen.

```
class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greet App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: 'Enter your name'),
            ),
            ElevatedButton(
              child: Text('Greet'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GreetScreen(name: _controller.text),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
```


**Step 2: Define Greet Screen**

This screen displays a greeting message to the user. It receives the user’s name as a parameter.


```
class GreetScreen extends StatelessWidget {
  final String name;

  const GreetScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Greet Screen")),
      body: Center(child: Text('Hello, $name!')),
    );
  }
}
```

*Example 2: Pass Product Object Details*

In this example, you will learn to pass product object details to the new screen. First, create a simple app with two screens: HomeScreen and ProductScreen.

**Step 1: Create a Product Model**

First you need to create a simple data model for the product.

```
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}
```

**Step 2: Sample Data**

Create a list of products to display on the home screen.

`final product = Product(name: 'Laptop', price: 1000);`


**Step 3: Define Product Screen**

This screen displays the product details. It receives the product object as a parameter.

```
class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${product.name}'),
            Text('Price: \$${product.price}'),
          ],
        ),
      ),
    );
  }
}
```

**Step 4: Navigate to Product Screen**

Navigate to the product screen and pass the product object as a parameter.

```
ElevatedButton(
  child: Text('View Product'),
  onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ProductScreen(product: product),
    ));
  },
),
```

*Example 3: Pass Data Using Named Routes*

In this example below, you will learn how to pass arguments to the second screen using named routes.

Defining Routes

First, define the named routes in the MaterialApp widget:

```
MaterialApp(
  title: 'Named Route Navigation',
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/second': (context) => SecondScreen(),
  },
);
```

**Passing Arguments**

When navigating to the second screen, you can pass arguments using the Navigator.pushNamed method:

```
Navigator.pushNamed(
  context,
  '/second',
  arguments: 'Hello from the first screen!',
);
And receive the arguments in the SecondScreen widget:

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}
```

*Example 4: Pass Data Using Named Routes*

In this example, you will learn to pass product object details to the new screen using named routes. First, create a simple app with two screens: HomeScreen and ProductScreen.

**Step 1: Create a Product Model**

First you need to create a simple data model for the product.

```
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}
```

**Step 2: Sample Data**

Create a list of products to display on the home screen.

`final product = Product(name: 'Laptop', price: 1000);`

**Step 3: Define Routes**

Define the routes in the MaterialApp widget.

```
MaterialApp(
  title: 'Named Route Navigation',
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/product': (context) => ProductScreen(),
  },
);
```

**Step 4: Navigate to Product Screen**

Navigate to the product screen and pass the product object as a parameter.

```
ElevatedButton(
  child: Text('View Product'),
  onPressed: () {
    Navigator.pushNamed(context, '/product', arguments: product);
  },
),
```

**Step 5: Receive Data**

Receive the product object in the product screen.

```
class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${product.name}'),
            Text('Price: \$${product.price}'),
          ],
        ),
      ),
    );
  }
}
```

**Challenge**

- Create a Flutter app with 2 screens called HomeScreen and ShopScreen. Use named routes to navigate between the screens. Also pass a list of products from the HomeScreen to the ShopScreen. HomeScreen should have a button to navigate to the ShopScreen. The ShopScreen should display a list of products.


# RETURN DATA FROM SCREEN

In the previous section, you learned how to send data to another screen. Now, you will learn how to return data from the new screen to the previous screen.

*Example 1: Pizza Selection*

In this example, you will learn to select a pizza from a list of pizzas. When you select a pizza, it will return the selected pizza to the previous screen.

**Step 1: Define Home Screen**

This is the main screen of the application. It has a button to navigate to the pizza selection screen and a text widget to display the selected pizza.

```
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _selectedPizza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pizza Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Select Pizza'),
              onPressed: () async {
                final selectedPizza = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PizzaSelectionScreen()),
                );
                setState(() {
                  _selectedPizza = selectedPizza;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Selected Pizza: $_selectedPizza'),
          ],
        ),
      ),
    );
  }
}
```

**Step 2: Define Pizza Selection Screen**

This screen displays a list of pizzas. When you select a pizza, it will return the selected pizza to the previous screen.

```
class PizzaSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Pizza')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Margherita'),
            onTap: () {
              Navigator.of(context).pop('Margherita');
            },
          ),
          ListTile(
            title: Text('Pepperoni'),
            onTap: () {
              Navigator.of(context).pop('Pepperoni');
            },
          ),
          ListTile(
            title: Text('Vegetarian'),
            onTap: () {
              Navigator.of(context).pop('Vegetarian');
            },
          ),
        ],
      ),
    );
  }
}
```

**Challenge**

- Create a app with a HomeScreen and a ColorSelectionScreen. The HomeScreen should have a button to navigate to the ColorSelectionScreen where the user can select a color. Once a color is selected, the ColorSelectionScreen should return that color to the HomeScreen, which then changes its background color accordingly.

Available Colors:
- Red
- Blue
- Green



# DRAWER NAVIGATION IN FLUTTER

You already learned how to create drawer in flutter. In this section, you will learn how to implement drawer navigation in flutter.

*Example 1: Simple Drawer Navigation*

In this example below, there are three screens: HomePage, ContactPage, and AboutPage. We’ll add a drawer to navigate between these screens.

**Step 1: Create Contact Page & About Page**

First define ContactPage and AboutPage.
```

// Contact Page
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Page')),
      body: Center(child: Text('Contact Page')),
    );
  }
}

// About Page
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Center(child: Text('About Page')),
    );
  }
}
```

**Step 2: Define Home Page with Drawer**

Now in home page, add a drawer to navigate between these screens.

```
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        child: Text('My App'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: Text('Contact'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
        },
      ),
      ListTile(
        title: Text('About'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
        },
      ),
    ],
  ),
),
```

**Challenge**

- Click on Try Online and create new screen called SettingsPage. Add a new item to the drawer to navigate to the SettingsPage.



# NAVIGATION METHODS IN FLUTTER

In this section, you will learn about useful navigation methods in Flutter. Here are some useful navigation methods:

1. `Navigator.push()`

**Navigator.push()** is used to navigate to a new screen by pushing it onto the navigation stack.

*Example 1: Using Navigator.push()*

In this example below, you will learn how to navigate to a new screen using Navigator.push().

```
// Navigator.push example
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AboutScreen()),
);
```

2. `Navigator.pushNamed()`

**Navigator.pushNamed()** is used to navigate to a new screen using a named route. Named routes are routes that are named using a string.

*Example 2: Using Navigator.pushNamed()*

In this example below, you will learn how to navigate to a new screen using `Navigator.pushNamed()`.

`Navigator.pushNamed(context, '/about');`

3. `Navigator.pop()`

**Navigator.pop()** is used to return to the previous screen, effectively popping the current screen off the navigation stack. It’s akin to the back button on a device.

*Example 3: Using Navigator.pop()*

`Navigator.pop(context);`

4. `Navigator.pushReplacement()`

This method replaces the current screen with a new one on the navigation stack, which is useful in scenarios like a login flow where you do not want the user to return to the login screen.

*Example 4: Using Navigator.pushReplacement()*

```
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen()),
);
```

5. `Navigator.pushAndRemoveUntil()`

**Navigator.pushAndRemoveUntil()** pushes a new screen and removes all the previous screens until a certain condition is met. This method is handy for logging out a user, where you want to remove all screens from the stack and navigate back to the login screen.

*Example 5: Using Navigator.pushAndRemoveUntil()*

```
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => WelcomeScreen()),
  (Route<dynamic> route) => false,
);
```

# TABBAR IN FLUTTER
**TabBar** is a widget that displays a row of tabs at the top or bottom of the app, allowing users to switch between different views or pages by tapping on them.

*Example 1: Courier Tracking App*

In this example, you will learn how to create a simple courier tracking app using TabBar. The app will have three tabs (In Transit, Delivered, and Pending) to display the status of the courier.

```
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text('Courier Tracking'),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car), text: 'In Transit'),
          Tab(icon: Icon(Icons.check), text: 'Delivered'),
          Tab(icon: Icon(Icons.access_time), text: 'Pending'),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Center(child: ListView(children: [Text('Parcel 21'), Text('Parcel 22')])),
        Center(child: ListView(children: [Text('Parcel 23'), Text('Parcel 24')])),
        Center(child: ListView(children: [Text('Parcel 26'), Text('Parcel 27')])),
      ],
    ),
  ),
)
```


> Note: When you run online, this code is slightly modified to enhance the presentation of the parcels.

*Example 2: Todo App*

In this example below, you will learn how to create a Todo App with a TabBar that has two tabs (Active and Completed) to display the tasks based on their status. Use the TabBarView to display the list of tasks for each tab.

```
DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      title: Text('Todo App'),
      bottom: TabBar(
        tabs: [
          Tab(text: 'Active'),
          Tab(text: 'Completed'),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Center(child: ListView(children: [
            ListTile(title: Text('Task 1'), leading: Icon(Icons.info)),
            ListTile(title: Text('Task 2'), leading: Icon(Icons.info)),
        ])),
        Center(child: ListView(children: [
            ListTile(title: Text('Task 3'), leading: Icon(Icons.info)),
            ListTile(title: Text('Task 4'), leading: Icon(Icons.info)),
        ])),
      ],
    ),
  ),
)
```

**Challenge**

- Look at the example 2 and add trailing icons to move tasks between tabs. For example, when you tap on the trailing icon of a task in the Active tab, it should move to the Completed tab. Similarly, when you tap on the trailing icon of a task in the Completed tab, it should move to the Active tab.


# QUESTIONS FOR PRACTICE 

1. Create a basic Flutter app with three screens: Home, About, and Contact. Implement navigation between these screens using MaterialPageRoute.
2. Develop a Flutter application with a bottom navigation bar. Ensure that switching between the tabs does not rebuild the pages.
3. Implement named route navigation in a Flutter app. Create a menu with options, and each option should navigate to a different screen using named routes.
4. Build a multi-page form in Flutter where each step is on a different screen. Use named routes to navigate between the steps and pass data across these screens.
5. Design a master-detail interface in Flutter where selecting an item from a list on the master page navigates to a detail page with more information about the item.
6. Create a Flutter app with a drawer menu. Each item in the drawer should navigate to a different screen using named routes.
7. Implement an authentication flow in Flutter. After login, redirect the user to the home screen, and ensure the back button does not navigate back to the login screen.
8. Develop a Flutter app with a nested navigation scenario where a tab navigator is nested inside a bottom navigation bar, and demonstrate switching between nested routes.
9. Create a Flutter app with a custom transition animation between screens. Use named routes and customize the MaterialPageRoute to achieve this.
10. Build a Flutter application with an onboarding flow. Use named routes to navigate through the onboarding screens, and after the last screen, navigate to the main content.