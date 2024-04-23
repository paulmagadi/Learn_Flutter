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


import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("To Do App"),
          ),
          backgroundColor: Colors.deepPurple[400],
        ),
        body: const Center(
          child: Image(
            image: 
              NetworkImage('https://codemy.com/images/aspenhospital.jpg')),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
    ),
  );
}
