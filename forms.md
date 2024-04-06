FORM IN FLUTTER
Forms in Flutter
Form widget is used to group multiple form fields, such as textbox, checkboxes, and buttons, to create a easy data entry experience.

Why Forms are Useful?
Form are important for building interactive and user-friendly applications. They are useful for the following reasons:

Data Collection: It is used to collect the user input data such as name, email, phone number, etc.
Validation: It is used to validate the user input data such as email, phone number, etc.
Submission: It is used to submit the user input data to the server.
Example 1: Basic Form in Flutter
In this example below, you will learn to create a form with First Name and Last Name fields.

Form(
  child: Column(
    children: [
      // Form fields go here
      TextFormField(
        decoration: InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your first name',
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your last name',
        ),
      ),
    ],
  ),
)
Example 2: Form with Validation in Flutter
In this example below, you will learn to create a form with First Name and Last Name fields with validation. You will learn more about validation in the next section.

final _formKey = GlobalKey<FormState>();
Form(
  key: _formKey,
  child: Column(
    children: [
      // Form fields go here
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your first name',
        ),
        validator: (value) {
          if (value == "") {
            return 'Please enter your first name';
          }
          return null;
        },
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your last name',
        ),
        validator: (value) {
          if (value == "") {
            return 'Please enter your last name';
          }
          return null;
        },
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Perform submission logic
          }
        },
        child: const Text('Submit'),
      ),
    ],
  ),
),
 Info
Note: GlobalKey is a unique identifier for widgets. It is used to access the state of a widget from outside the widget.


TEXTFORMFIELD IN FLUTTER
Introduction
TextFormField is a widget that allows you to enter text into an app. It makes easy to collect text input, validate and save that input.

Example 1: Basic TextFormField
In this example, you will learn to create a basic form field for text input.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your name',
  ),
)
Example 2: TextFormField with Validation
In this example below, you will learn to implement validation to ensure the input is not empty.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your email',
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  },
)
Example 3: Password Field
In this example below, you will learn to create a password field that hides the input.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Password',
  ),
  obscureText: true,
)
Example 4: Styled TextFormField
In this example below, you will learn to customize the appearance of your TextFormField.

TextFormField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
    ),
    labelText: 'Enter your address',
  ),
)
Example 5: TextFormField with Prefix and Suffix Icons
In this example below, you will learn to create a TextFormField with prefix and suffix icons.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Phone Number',
    prefixIcon: Icon(Icons.phone),
    suffixIcon: Icon(Icons.check_circle),
  ),
)
Example 6: TextFormField with Max Length
In this example below, you will learn to create a TextFormField with a maximum length of 10 characters.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your address',
  ),
  maxLength: 10,
)
Example 7: TextFormField with Number Keyboard
In this example below, you will learn to create a TextFormField that opens the number keyboard on focus.

TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your age',
  ),
  keyboardType: TextInputType.number,
)
Example 8: TextFormField with Input Formatter
In this example below, you will learn to create a TextFormField with an input formatter that formats the input as a phone number. To achieve this, you will need to add the following import statement to your file:

import 'package:flutter/services.dart';
TextFormField(
  decoration: InputDecoration(
    labelText: 'Phone Number',
  ),
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(10),
  ],
)
Input Formatters are used to format the input as it is being entered. In above example, we use FilteringTextInputFormatter to allow only digits and LengthLimitingTextInputFormatter to limit the input to 10 characters.

Challenge
Create a TextFormField for user feedback that includes validation to ensure the input is at least 15 characters long. Style the field with a rounded border and include a prefix icon that represents communication.


CHECKBOX IN FLUTTER
Introduction
Checkbox is a widget that allows users to select between two states: checked or unchecked. This is typically used in forms and settings to enable or disable options.

Example 1: Basic Checkbox
In this example, you will learn to create a simple checkbox using the Checkbox widget.

Checkbox(
  value: isChecked,
  onChanged: (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
),
Example 2: Checkbox with Custom Colors
In this example, you will learn to create a checkbox with custom colors using the Checkbox widget.

Checkbox(
  value: isChecked,
  checkColor: Colors.white, // color of tick Mark
  activeColor: Colors.green, // background color
  onChanged: (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
)
Example 3: Checkbox List
In this example, you will learn to create a group of checkboxes using the CheckboxListTile widget.

var options = <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'];
var selectedOptions = <String>[];

ListView(
  children: options.map((String option) {
    return CheckboxListTile(
      title: Text(option),
      value: selectedOptions.contains(option),
      onChanged: (bool? value) {
        setState(() {
          if (value == true) {
            selectedOptions.add(option);
          } else {
            selectedOptions.remove(option);
          }
        });
      },
    );
  }).toList(),
)
Example 4: Accept Terms & Conditions Checkbox
In this example, you will learn to create a checkbox for accepting terms and conditions using the CheckboxListTile widget.

Form(
  child: Column(
    children: [
      CheckboxListTile(
        title: Text("Accept Terms & Conditions"),
        value: isAccepted,
        onChanged: (bool? value) {
          setState(() {
            isAccepted = value!;
          });
        },
      ),
      // Other form elements
    ],
  ),
)
Example 5: Interest Selection Checkbox
In this example, you will learn to find the selected interests from a list of interests using the CheckboxListTile widget.

List<String> interests = [
  'Reading',
  'Music',
  'Travel',
  'Sports',
  'Cooking',
];

List<String> selectedInterests = [];

Column(
  children: interests.map((String interest) {
    return CheckboxListTile(
      title: Text(interest),
      value: selectedInterests.contains(interest),
      onChanged: (bool? value) {
        setState(() {
          if (value == true) {
            selectedInterests.add(interest);
          } else {
            selectedInterests.remove(interest);
          }
        });
      },
    );
  }).toList(),
)
Challenge
Create a checkbox group for selecting multiple programming languages from a list of languages.

// available programming languages
List<String> languages = [
  'Dart',
  'Python',
  'Java',
  'JavaScript',
  'C++',
  'C#',
  'Ruby',
  'Go',
  'Swift',
  'Kotlin',
];


RADIOBUTTON IN FLUTTER
Introduction
RadioButtons are a type of input widget to select one option from a group. Checkbox allows multiple selections but Radio Button allows only one selection at a time.

Example 1: Basic RadioButton
In this example, learn how to create a group of radio buttons for selecting Male, Female and Others. If you have any problem try Run Online button to see the code in action.

Step 1: Create Enum For Options
We will use enhanced enum to create the options for the radio buttons.

enum Gender {
  male("Male"),
  female("Female"),
  others("Others");

  // Members
  final String text;
  const Gender(this.text);
}
Step 2: Create State Variable
It’s time to create a state variable to store the selected option.

Gender? _selectedOption = Gender.male;
Step 3: Create Radio Buttons
Finally, create the radio buttons using the RadioListTile widget.

Column(
  // Radio buttons
  children: Gender.values
      .map((option) => RadioListTile<Gender>(
            title: Text(option.text),
            value: option,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
          ))
      .toList(),
)
Example 2: Game Difficulty Selection
In this example, learn how to create a group of radio buttons for selecting the game difficulty level. If you have any problem try Run Online button to see the code in action.

Step 1: Create Enum For Options
We will use enhanced enum to create the options for the radio buttons.

enum Difficulty {
  easy("Easy"),
  medium("Medium"),
  hard("Hard");

  // Members
  final String text;
  const Difficulty(this.text);
}
Step 2: Create State Variable
It’s time to create a state variable to store the selected option.

Difficulty? _selectedDifficulty = Difficulty.easy;
Step 3: Create Radio Buttons
Finally, create the radio buttons using the RadioListTile widget.

Column(
  // Radio buttons
  children: Difficulty.values
      .map((option) => RadioListTile<Difficulty>(
            title: Text(option.text),
            value: option,
            groupValue: _selectedDifficulty,
            onChanged: (value) {
              setState(() {
                _selectedDifficulty = value;
              });
            },
          ))
      .toList(),
)
Challenge
Create a quiz app with radio buttons to select the correct answer for each question.

Question: What is the capital of France?
Options:
- Paris
- London
- Berlin


SWITCH IN FLUTTER
Introduction
The Switch widget in Flutter is a fundamental UI component used for toggling between two states, such as on/off or true/false. This article will guide you through various implementations of the Switch widget, from basic usage to more advanced scenarios including custom styling and integration with forms.

Example 1: Basic Switch
Learn how to create a simple switch that toggles a boolean value.

Switch(
  value: isSwitched,
  onChanged: (value) {
    setState(() {
      isSwitched = value;
    });
  },
),
Example 2: Custom Styled Switch
Customize the appearance of a switch with custom colors.

Switch(
  value: isSwitched,
  activeTrackColor: Colors.lightGreenAccent,
  activeColor: Colors.green,
  onChanged: (value) {
    setState(() {
      isSwitched = value;
    });
  },
)
Example 3: Switch List
Implement a list of switches, each controlling a different setting.

var settings = <String, bool>{
  'Wi-Fi': true,
  'Bluetooth': false,
  'Airplane Mode': false,
  'Mobile Data': true,
};

ListView(
  children: settings.keys.map((String key) {
    return SwitchListTile(
      title: Text(key),
      value: settings[key]!,
      onChanged: (bool value) {
        setState(() {
          settings[key] = value;
        });
      },
    );
  }).toList(),
)
Example 4: Form Switch
Incorporate a switch into a form to accept terms & conditions or toggle preferences.

Form(
  child: Column(
    children: [
      SwitchListTile(
        title: Text("Accept Terms & Conditions"),
        value: isAccepted,
        onChanged: (bool value) {
          setState(() {
            isAccepted = value;
          });
        },
      ),
      // Other form elements
    ],
  ),
)
Example 5: Profile Visibility Switch
Use a switch to control the visibility of user profile information.

SwitchListTile(
  title: Text('Show Profile Publicly'),
  value: isProfilePublic,
  onChanged: (bool value) {
    setState(() {
      isProfilePublic = value;
    });
  },
)
Challenge
Create a settings page using switches to control various app features such as notifications, dark mode, location tracking, and automatic updates.

// App settings options
Map<String, bool> appSettings = {
  'Notifications': true,
  'Dark Mode': false,
  'Location Tracking': true,
  'Automatic Updates': false,
};


DATETIME PICKER IN FLUTTER
Introduction
The DateTime Picker is a widget that allows users to select a date, time, or both from a dialog. This is very useful for apps that require you to input dates or times, like scheduling events or setting reminders.

Example 1: BirthDate Picker
In this example, you will learn to create a date picker for selecting a birthdate.

DateTime? selectedDate;

Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
  );
  if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
}
Example 2: Attendance Time Picker
In this example, you will learn to create a time picker for selecting attendance time.

TimeOfDay? selectedTime;

Future<void> _selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (picked != null && picked != selectedTime)
    setState(() {
      selectedTime = picked;
    });
}
Example 3: Combined DateTime Picker
In this example, you will learn to create a combined date and time picker.

DateTime? selectedDateTime;

Future<void> _selectDateTime(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
  );
  if (picked != null) {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        selectedDateTime = DateTime(
          picked.year,
          picked.month,
          picked.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }
}
Challenge
Create application that find age from the selected birthdate and display it in the app.


FORM VALIDATION IN FLUTTER
Form Validation in Flutter
If you are building a form in your Flutter application, it is essential to validate the user input data to ensure data integrity. In this section, you will learn how to validate user input data using the TextFormField widget in Flutter.

Why Form Validation is Important?
Data Integrity: It ensures that the data entered by the user is accurate and consistent.
User Experience: It provides a better user experience by guiding the user to enter valid data.
Error Prevention: It helps in preventing errors and exceptions caused by invalid data.
Example 1: Feedback Form with Validation
In this example, you will learn to create a feedback form with a validation rule ensuring a minimum character count. If you have any problem try Run Online button to see the code in action.

// Create a GlobalKey for the form
final _formKey = GlobalKey<FormState>();

// Create a TextEditingController for the feedback field
final _feedbackController = TextEditingController();

Form(
  key: _formKey,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextFormField(
        maxLines: 5,
        controller: _feedbackController,
        decoration: const InputDecoration(
          hintText: 'Enter your feedback',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your feedback';
          } else if (value.length < 10) {
            return 'Feedback must be at least 10 characters';
          }
          return null;
        },
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Feedback submitted successfully!')),
            );
            // Additional submission logic here
          }
        },
        child: const Text('Submit'),
      ),
    ],
  ),
)
Example 2: Sign-Up Form with Validation
In this example, you will learn to create a sign-up form with validation to ensure users provide a valid email address and a secure password. If you have any problem try Run Online button to see the code in action.

// Create a GlobalKey for the form
final _formKey = GlobalKey<FormState>();

// Create TextEditingController for email and password fields
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

Form(
  key: _formKey,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextFormField(
        controller: _emailController,
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
          return null;
        },
      ),
      const SizedBox(height: 10),
      TextFormField(
        controller: _passwordController,
        decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          border: OutlineInputBorder(),
        ),
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign-up successful!')),
            );
            // Additional submission logic here
          }
        },
        child: const Text('Sign Up'),
      ),
    ],
  ),
)
Challenge
Create a contact form with fields name, phone number, and email and validate according to the following rules:

Name: Required
Phone Number: Required, must be 10 digits
Email: Required, must be a valid email address


QUESTIONS FOR PRACTICE 6
Form Validation Practice Questions
Create a form with First Name and Last Name fields. Validate the form to ensure that both fields are not empty.
Create a form with Email and Password fields. Validate the form to ensure that the email is not empty and the password is at least 6 characters long.
Create a form with Phone Number and Address fields. Validate the form to ensure that the phone number is not empty and the address is at least 10 characters long.
Create a form with Username and Confirm Password fields. Validate the form to ensure that both fields are not empty and the password matches the confirm password.