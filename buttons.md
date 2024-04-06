BUTTONS IN FLUTTER
Flutter Buttons
Buttons are an essential part of any application. They allow you to interact with the app and perform various actions. In this section, you will learn about different types of buttons available in Flutter, along with examples for each.

Button Types in Flutter
You can get different types of buttons in Flutter, such as:

Button	Description
Material Button	Mostly used button with material design.
Elevated Button	Shadowed button for important actions.
Text Button	Flat button for less important actions.
Outlined Button	Border button for secondary actions.
Icon Button	Button with an icon.
Floating Action Button	Circular main action button.
Dropdown Button	Button to select from a list of options.
Popup Menu Button	Button that shows more options.
 Info
Note: You will learn about each button type with real world examples in upcoming sections.

Button Useful Properties
Here are some common properties that you can use with buttons in Flutter:

Property	Description
onPressed	Things to do when the button is pressed.
child	Widget to display inside the button.
Example 1: Simple MaterialButton In Flutter
If you want to create a simple button with text, use the MaterialButton widget. It is a versatile button that can display text, icons, and more.

MaterialButton(
  onPressed: () {
    // action to perform when button is pressed
  },
  color: Colors.blue,
  child: const Text('Press Me', style: TextStyle(color: Colors.white)),
)
Popular Buttons in Flutter
In upcoming sections, you will learn about different types of buttons available in Flutter, along with examples for each. Click on the links below to get started with flutter buttons:

Material Button in Flutter
Elevated Button in Flutter
Text Button in Flutter
Outlined Button in Flutter
Icon Button in Flutter
Floating Action Button in Flutter
Dropdown Button in Flutter
Popup Menu Button in Flutter


MATERIAL BUTTON IN FLUTTER
Introduction
MaterialButton is one of the most commonly used buttons in Flutter. It is a versatile button that can display text, icons, and more. This guide will help you understand the MaterialButton with the help of real-world examples.

Example 1: Simple MaterialButton
In this example below, you will learn to create a simple button with text using the MaterialButton widget.

MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  child: const Text('Press Me'),
)
Example 2: MaterialButton With Icon
In this example below, you will learn to create a button with an icon using the MaterialButton widget.

MaterialButton(
  onPressed: () {
    // Action to perform on button press
  },
  color: Colors.green,
  textColor: Colors.white,
  child: const Row(
    mainAxisSize: MainAxisSize.min, // Align text and icon closely together
    children: <Widget>[
      Icon(Icons.add),
      SizedBox(width: 8), // Space between icon and text
      Text('Add Item'),
    ],
  ),
)
Example 3: Rounded Corners MaterialButton
In this example below, you will learn to create a button with rounded corners using the MaterialButton widget.

MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
  ),
  child: const Text('Press Me'),
)
Example 4: MaterialButton with Shadow and Elevation
In this example below, you will learn to create a button with shadow and elevation using the MaterialButton widget.

MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  elevation: 5,
  child: const Text('Press Me'),
)
Example 5: Disabled MaterialButton
In this example below, you will learn to create a disabled button using the MaterialButton widget.

MaterialButton(
  onPressed: null,
  color: Color.fromARGB(255, 205, 208, 211),
  child: Text('Disabled Button'),
)
Example 6: Gradient Background In MaterialButton
In this example below, you will learn to create a button with a gradient background using the MaterialButton widget.

MaterialButton(
  onPressed: () {},
  child: Ink(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Colors.blue, Colors.red]
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Container(
      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
      alignment: Alignment.center,
      child: const Text(
        'Gradient Button',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  ),
)
 Info
Note: Ink widget is used for decorating a part of your UI with a background image, color, or custom drawings

Challenge
Create a simple MaterialButton with text “Click Me” with a red color and white text color. When the button is pressed, display a snackbar with the message “Button Pressed”.


ELEVATED BUTTON IN FLUTTER
Introduction
ElevatedButton is one of the most commonly used button widgets in Flutter. It is a material design button that is elevated from the surface, making it prominent and visually appealing. Here you will learn how to use elevated buttons with real-world examples.

Example 1: Simple ElevatedButton
In this example below, you will learn to create a simple button with text using the ElevatedButton widget.

ElevatedButton(
  onPressed: () {},
  child: Text('Press Me'),
)
Example 2: ElevatedButton With Icon
In this example below, you will learn to create a button with an icon using the ElevatedButton widget.

ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text('Add Item'),
)
Example 3: Custom Color and TextStyle
In this example below, you will learn to create a button with custom color and text style using the ElevatedButton widget.

ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.green),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 20),
    ),
  ),
  child: Text('Custom Style'),
)
Example 4: Rounded Corners ElevatedButton
In this example below, you will learn to create a button with rounded corners using the ElevatedButton widget.

ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    ),
  ),
  child: Text('Rounded Corners'),
)
Example 5: Adjusting Shadow and Elevation
In this example below, you will learn to create a button with shadow and elevation using the ElevatedButton widget.

ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    elevation: MaterialStateProperty.all(10),
  ),
  child: Text('Shadow and Elevation'),
)
Example 6: Disabled ElevatedButton
In this example below, you will learn to create a disabled button using the ElevatedButton widget.

ElevatedButton(
  onPressed: null,
  child: Text('Disabled Button'),
)
Challenge
Construct an ElevatedButton that changes its text from “Click Me” to “Clicked” upon being pressed. Additionally, the button should display a snackbar with the message “Button Pressed” when clicked.
FLOATING ACTION BUTTON IN FLUTTER
Introduction
Floating Action Button (FAB) is a circular icon button that floats above the user interface. In this section, you will learn how to use the FAB widget in Flutter to create a variety of floating action buttons with different styles and functionalities. It is commonly used to trigger primary actions in an application, such as adding a new item, composing a new message, or initiating a new task.

Example 1: Simple FAB
In this example below, you will learn to create a basic FAB with a default icon.

// put FAB inside Scaffold.
floatingActionButton: FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
)
Example 2: Custom Color FAB
In this example, you will learn to create a FAB with a custom background color.

FloatingActionButton(
  onPressed: () {},
  backgroundColor: Colors.green,
  child: Icon(Icons.phone),
)
Example 3: Mini FAB
In this example below, you will learn to implement a smaller version of the FAB suitable for limited spaces.

FloatingActionButton(
  mini: true,
  onPressed: () {},
  child: Icon(Icons.star),
)
Example 4: Extended FAB
In this example below, you will learn to create an extended FAB with a label and icon.

FloatingActionButton.extended(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text('Add Item'),
)
Challenge
Create floating action button which change its background color from green to red when pressed.

ICON BUTTON IN FLUTTER
Introduction
IconButton is a type of button in Flutter that displays an icon instead of text. In this section, you will learn how to use the IconButton widget effectively, with real-world examples.

Example 1: Simple IconButton
In this example below, you will learn to create a simple IconButton with a default icon.

IconButton(
  onPressed: () {},
  icon: Icon(Icons.home),
)
Example 2: IconButton with Custom Color
In this example below, you will learn to create an IconButton with a custom color for the icon.

IconButton(
  onPressed: () {},
  icon: Icon(Icons.send),
  color: Colors.purple,
)
Example 3: IconButton with Size Customization
In this example below, you will learn to create an IconButton with a custom size for the icon.

IconButton(
  onPressed: () {},
  icon: Icon(Icons.alarm),
  iconSize: 30,
)
Example 4: IconButton with Tooltip
In this example below, you will learn to create an IconButton with tooltip. Tooltip provide additional information on hover or long press.

IconButton(
  onPressed: () {},
  icon: Icon(Icons.info),
  tooltip: 'More Info',
)
Example 5: Disabled IconButton
In this example below, you will learn to create a disabled button using the IconButton widget.

IconButton(
  icon: Icon(Icons.block),
  onPressed: null,
)
Challenge
Create an IconButton that changes the color of the icon when pressed.


OUTLINED BUTTON IN FLUTTER
Introduction
OutlinedButton is a type of button in Flutter that displays a border around the button’s child. This guide will help you understand the OutlinedButton widget with the help of real-world examples.

Example 1: Simple OutlinedButton
In this example below, you will learn to create a simple button with text.

OutlinedButton(
  onPressed: () {},
  child: Text('Press Me'),
)
Example 2: OutlinedButton With Icon
In this example below, you will learn to create a button with an icon.

OutlinedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text('Add Item'),
)
Example 3: Custom Border and TextStyle
In this example below, you will learn to create a button with custom border and text styles.

OutlinedButton(
  onPressed: () {},
  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.green, width: 2),
    textStyle: TextStyle(color: Colors.green, fontSize: 20),
  ),
  child: Text('Custom Style'),
)
Example 4: Rounded Corners OutlinedButton
In this example below, you will learn to create a button with rounded corners.

OutlinedButton(
  onPressed: () {},
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
  ),
  child: Text('Rounded Corners'),
)
Example 5: Disabled OutlinedButton
In this example below, you will learn to create a disabled button using the OutlinedButton widget.

OutlinedButton(
  onPressed: null,
  child: Text('Disabled Button'),
)
Challenge
Create an OutlinedButton that changes the border color from blue to green when pressed.


TEXT BUTTON IN FLUTTER
Introduction
TextButton is a simple button that contains a text label and perform an action when pressed. This guide will help you understand the TextButton with the help of real-world examples.

Example 1: Default TextButton
In this example below, you will learn to create a simple TextButton with text label.

TextButton(
  onPressed: () {},
  child: Text('Press Me'),
)
Example 2: TextButton with Icon
In this example below, you will learn to create a TextButton with an icon and text label.

TextButton.icon(
  onPressed: () {},
  icon: Icon(Icons.info),
  label: Text('More Info'),
)
Example 3: Custom Color and TextStyle
In this example below, you will learn to create a TextButton with custom text color and style.

TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.yellow, 
  ),
  child: Text('Custom Style'),
)
Example 4: TextButton with Underline
In this example below, you will learn to create a TextButton with underlined text.

TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(
    textStyle: TextStyle(decoration: TextDecoration.underline),
  ),
  child: Text('Underlined Text'),
)
Example 5: Disabled TextButton
In this example below, you will learn to create a disabled TextButton.

TextButton(
  onPressed: null,
  child: Text('Disabled Button'),
)
Challenge
Design a TextButton that toggles its text color between two colors upon each press, illustrating a simple state change.


DROPDOWN BUTTON IN FLUTTER
Introduction
DropdownButton is a type of button in Flutter that displays a list of items when pressed. It allows users to select a single item from the list. This guide will help you understand the DropdownButton widget with the help of real-world examples.

Use Cases
Country Selection: Use a dropdown button to allow users to select a country from a list of countries.
Changing App Settings: Use a dropdown button to allow users to change app settings such as language, theme, or font size.
Example 1: Basic Dropdown Button
In this example below, you will learn to create a basic dropdown button with a list of items. For full code, press Run Online button.

DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['One', 'Two', 'Three', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
)
Example 2: Country Selection App
In this example below, you will learn to create a country selection app using a dropdown button. For full code, press Run Online button.

DropdownButton<String>(
  value: selectedCountry,
  onChanged: (String? newValue) {
    setState(() {
      selectedCountry = newValue!;
    });
  },
  items: <String>['India', 'USA', 'UK', 'Canada']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
)
Challenge
Create a dropdown button to select days of the week (Monday, Tuesday, Wednesday, etc.) and display the selected day in the app.


POPUP MENU BUTTON IN FLUTTER
Introduction
The PopupMenuButton widget in Flutter is used to display a menu when pressed and allows you to select from a list of options. It’s commonly used for overflow menus, showing choices related to an item.

Example 1: Basic Popup Menu Button
In this example below, you will learn to create a basic popup menu button with a list of items. When you press the button, a menu will appear with the available options.

PopupMenuButton<int>(
  onSelected: (int result) {
    setState(() {
      _selectedMenu = result;
    });
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
    const PopupMenuItem<int>(
      value: 1,
      child: Text('About Us'),
    ),
    const PopupMenuItem<int>(
      value: 2,
      child: Text('Contact Us'),
    ),
    const PopupMenuItem<int>(
      value: 3,
      child: Text('Privacy Policy'),
    ),
  ],
)
Example 2: Popup Menu Button with Icons
In this example below, you will learn to create a popup menu button with icons for the menu items. When you press the button, a menu will appear with the available options, each with an icon.

PopupMenuButton<int>(
  onSelected: (int result) {
    setState(() {
      _selectedMenu = result;
    });
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
    const PopupMenuItem<int>(
      value: 1,
      child: ListTile(
        leading: Icon(Icons.info),
        title: Text('About Us'),
      ),
    ),
    const PopupMenuItem<int>(
      value: 2,
      child: ListTile(
        leading: Icon(Icons.phone),
        title: Text('Contact Us'),
      ),
    ),
    const PopupMenuItem<int>(
      value: 3,
      child: ListTile(
        leading: Icon(Icons.privacy_tip),
        title: Text('Privacy Policy'),
      ),
    ),
  ],
)
Challenge
Create a popup menu button that shows options for changing the theme of the app (Light, Dark, System Default).



QUESTIONS FOR PRACTICE 5
Button Widgets in Flutter: Practice Questions
Create a Flutter application that displays a MaterialButton on the screen. When pressed, the button should change its color from blue to green.
Implement an ElevatedButton with a shadow of 10. The button should display a Snackbar with a message “ElevatedButton Pressed” when clicked.
Design a TextButton that toggles its text between “Enabled” and “Disabled” upon each click. Use a variable to manage the button’s state.
Create a DropdownButton with items “Item 1”, “Item 2”, and “Item 3”. Display the selected item in a Snackbar when an item is selected.
Develop a PopupMenuButton that shows three menu items: “Option 1”, “Option 2”, and “Option 3”. Handle the selection and display the chosen option in a Toast or a Snackbar.