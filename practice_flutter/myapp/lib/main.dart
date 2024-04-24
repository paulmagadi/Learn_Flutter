// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My First Flutter App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text(
//               'Hello, Flutter!',
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red,
//                 backgroundColor: Color.fromARGB(255, 158, 152, 133),
//                 decoration: TextDecoration.underline,
//               ),
//               textAlign: TextAlign.center,
//               ),
//             ),
//         ),
//         body: const Center(
//           child: Text(
//             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend commodo libero. Vestibulum in metus rhoncus, feugiat augue vel, varius nulla. Morbi tincidunt sem at nibh placerat vulputate. Maecenas bibendum metus sit amet nulla fermentum semper. Suspendisse suscipit tortor nisi, sed euismod mauris gravida eu. Nullam facilisis magna lacus, id imperdiet tellus scelerisque sodales. Fusce auctor nisl ex, a iaculis turpis hendrerit ac. Phasellus malesuada lorem ac ligula pharetra molestie. Integer sed sapien nunc. Aliquam ac magna tellus. Suspendisse consequat ipsum eget nulla maximus facilisis nec varius risus. Sed ut erat vel risus auctor tincidunt viverra vel orci. Vestibulum ac maximus leo. Quisque vitae lorem ultricies, tristique lectus ac, vulputate sem. Aliquam erat arcu, posuere in consequat id, ornare at elit. Sed tempus egestas magna, sit amet pulvinar enim molestie eu. Nulla consequat urna in facilisis cursus. Nullam rhoncus nibh felis, eu pellentesque turpis accumsan in. Ut porta lectus blandit orci hendrerit elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ac magna lectus. Sed a quam euismod, fames ac ante ipsum primis in faucibus. Morbi pulvinar, augue quis egestas accumsan, eros eros viverra nibh, a facilisis leo urna finibus turpis. Sed vulputate neque nisl, eget posuere dolor consectetur porttitor.Pellentesque quis ligula eu erat pretium elementum. Donec a nisl ut nulla cursus efficitur et a nulla. Aliquam id leo at diam dapibus tempus. Praesent risus elit, eleifend a massa in, vulputate ultricies velit. Cras in diam et dolor tincidunt eleifend quis et enim. Phasellus.',
//             style: TextStyle(fontSize: 24),
//             overflow: TextOverflow.visible,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Text("To do app"),
//     ),
//   );
// }

//Center

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Center(
//         child: Text("To do app"),
//       ),
//     ),
//   );
// }

// Scaffold

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("To Do App"),
//         ),
//       ),
//     ),
//   );
// }

// Center

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(
//            child:  Text("To Do App"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child: Text("To Do App"),
//           ),
//         ),
//         body: Center(
//           child: Text ("Learn to code"),
//         ),
//       ),
//     ),
//   );
// }

// Colors

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("To Do App"),
//           ),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body: const Center(
//           child: Text ("Learn to code"),
//         ),
//         backgroundColor: Colors.deepPurple[200],
//       ),
//     ),
//   );
// }

//Local Image

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("To Do App"),
//           ),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body: const Center(
//           child: Image(
//             image:
//               AssetImage("images/paul.jpg")),
//         ),
//         backgroundColor: Colors.deepPurple[200],
//       ),
//     ),
//   );
// }

//Internet Image

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("To Do App"),
//           ),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body: const Center(
//           child: Image(
//             image:
//               NetworkImage('https://codemy.com/images/aspenhospital.jpg')),
//         ),
//         backgroundColor: Colors.deepPurple[200],
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("To Do App"),
//           ),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body: const Center(
//           child: Image(
//             image:
//               AssetImage("images/paul.jpg")),
//         ),
//         backgroundColor: Colors.deepPurple[200],
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';


// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Container Widget Demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("MYAPP"),
//           ),
//         ),
//         body: Container(
//           child: Text('This is my first app'),
//           padding: EdgeInsets.all(30),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.black,
//               width: 2,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My First App'),
//         ),
//         body: const Row(
//           children: [
//             Icon(Icons.star, size: 50),
//             Text('I am learning flutter'),
//             Icon(Icons.star, size: 50),
//           ],
//         ),
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          children: [
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    ),
  );
}