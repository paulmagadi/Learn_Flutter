
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                backgroundColor: Color.fromARGB(255, 158, 152, 133),
              ),
              textAlign: TextAlign.center,
              ),
            ),
        ),
        body: const Center(
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend commodo libero. Vestibulum in metus rhoncus, feugiat augue vel, varius nulla. Morbi tincidunt sem at nibh placerat vulputate. Maecenas bibendum metus sit amet nulla fermentum semper. Suspendisse suscipit tortor nisi, sed euismod mauris gravida eu. Nullam facilisis magna lacus, id imperdiet tellus scelerisque sodales. Fusce auctor nisl ex, a iaculis turpis hendrerit ac. Phasellus malesuada lorem ac ligula pharetra molestie. Integer sed sapien nunc.

Aliquam ac magna tellus. Suspendisse consequat ipsum eget nulla maximus facilisis nec varius risus. Sed ut erat vel risus auctor tincidunt viverra vel orci. Vestibulum ac maximus leo. Quisque vitae lorem ultricies, tristique lectus ac, vulputate sem. Aliquam erat arcu, posuere in consequat id, ornare at elit. Sed tempus egestas magna, sit amet pulvinar enim molestie eu. Nulla consequat urna in facilisis cursus. Nullam rhoncus nibh felis, eu pellentesque turpis accumsan in. Ut porta lectus blandit orci hendrerit elementum.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ac magna lectus. Sed a quam euismod, laoreet felis ut, pretium eros. Etiam sit amet leo nisl. Ut sed risus non turpis iaculis imperdiet eget vitae dui. Etiam nec rhoncus elit. Nullam sollicitudin semper dictum. Sed magna nibh, placerat nec tellus rhoncus, pellentesque posuere ante. Quisque eleifend urna risus, at lacinia dolor pulvinar et. Cras iaculis ligula ex, volutpat commodo nisi semper vitae. Cras vitae porta ex, in pellentesque ex. Morbi sed ultrices ex. Maecenas eget lorem nisl.

Nulla ornare ac neque ac ullamcorper. Vestibulum eleifend lacus tortor, non sagittis felis mattis nec. Nulla sed semper nisl, vel condimentum metus. Vivamus elementum sit amet dui eget gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas id condimentum mauris, eget blandit nisl. Donec ac commodo augue, in porta mauris. Vestibulum a neque vel mauris consequat tincidunt eu tempus leo. Curabitur lorem neque, iaculis ac quam a, tincidunt suscipit diam. Etiam pellentesque massa purus, in aliquet ante malesuada a. Quisque ultrices, tellus et commodo ultricies, nibh mi consectetur magna, sed bibendum turpis eros nec eros. Nulla id dictum nisi.

Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed consectetur aliquam metus eget porttitor. Vestibulum suscipit, mi at faucibus commodo, urna tortor porta nulla, ac efficitur ligula leo vel metus. Quisque egestas justo quis est luctus tempor. Maecenas vel pharetra urna, vitae iaculis velit. Ut venenatis condimentum enim eu bibendum. Sed pellentesque mollis tristique. Aliquam lectus enim, condimentum ac varius eget, porttitor vel lectus. Proin at arcu ut felis luctus interdum. Nulla eu purus est. Nam et urna fringilla, pretium purus quis, consectetur enim. Pellentesque ac commodo tellus. Pellentesque volutpat fermentum ante.

Aenean varius sapien non nibh mattis, eu aliquam nisi pellentesque. Sed facilisis rutrum euismod. Sed vestibulum pharetra faucibus. Nam lacinia cursus feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris sapien arcu, mollis pellentesque suscipit faucibus, lacinia in orci. Praesent at fermentum ipsum. Nullam varius blandit porttitor. Nunc porta feugiat eros non condimentum. Maecenas vestibulum rutrum neque, eget posuere mi rutrum id. Aenean sapien urna, volutpat eget lobortis sit amet, pellentesque ullamcorper libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt accumsan lorem a dictum. Praesent quis turpis dui.

Maecenas vestibulum tincidunt nibh in ullamcorper. Duis feugiat quam id nisi tristique, eget molestie odio elementum. Donec condimentum quam nec nisi dapibus tincidunt. Aenean maximus condimentum lacinia. Nulla euismod euismod suscipit. Etiam pharetra massa turpis, sed interdum mauris consectetur hendrerit. Suspendisse egestas felis sapien, bibendum vestibulum est tristique vitae. Nullam non justo sit amet tellus placerat cursus id vitae velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent quis tempor nibh. Nunc lobortis consequat dictum. Morbi nulla dui, tempus vel maximus et, pretium non urna. Fusce iaculis libero ante, ac convallis mauris consequat et. Vivamus eget sapien ut massa tincidunt varius dignissim eu nisi. Cras pulvinar sit amet sem quis tincidunt.

Donec congue purus lacus, ut tempus urna placerat pretium. Fusce porttitor laoreet arcu lacinia eleifend. Nunc malesuada eget justo a mattis. Nam porttitor semper feugiat. Curabitur a auctor enim. Quisque mattis odio eros, nec scelerisque enim maximus quis. Cras placerat hendrerit libero, ac vehicula neque faucibus vel. Cras pharetra velit a mi efficitur sollicitudin. Vestibulum in mollis enim. Sed leo sapien, iaculis vel pellentesque a, dictum nec ante.

Sed consequat tempus orci, eleifend finibus libero accumsan sit amet. Proin ut accumsan arcu. In tristique varius lacus, nec semper nisi egestas eleifend. Cras ac vehicula lorem. Pellentesque consequat dictum eros at ullamcorper. Ut a sollicitudin metus, vel molestie dui. Maecenas ultricies porta ipsum, vitae dictum urna rutrum sit amet. Donec ante ex, aliquam sit amet nisi porttitor, sollicitudin maximus nunc. Pellentesque dignissim leo ipsum, sit amet dapibus orci vestibulum a. Vivamus ante est, hendrerit ut risus ut, vestibulum pulvinar enim. Quisque sed condimentum dui. Duis sagittis ultricies justo, a maximus dolor interdum et.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed dui augue, faucibus et risus ut, faucibus placerat eros. Nunc bibendum porttitor nisi vitae pellentesque. Nam efficitur aliquet feugiat. Praesent eget sem condimentum, venenatis nisl vitae, ornare lectus. Curabitur scelerisque non turpis eu porta. Nunc condimentum ac velit ac commodo. Nam quis tortor sed quam bibendum mollis. Ut facilisis dictum turpis, id ultricies nisi scelerisque et. Quisque vel sapien in metus venenatis euismod. In sit amet sodales ligula. Mauris bibendum sagittis metus, vitae tempor sapien fermentum in. Duis vehicula sagittis felis, sit amet bibendum arcu consectetur ut. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi pulvinar, augue quis egestas accumsan, eros eros viverra nibh, a facilisis leo urna finibus turpis. Sed vulputate neque nisl, eget posuere dolor consectetur porttitor.

Pellentesque quis ligula eu erat pretium elementum. Donec a nisl ut nulla cursus efficitur et a nulla. Aliquam id leo at diam dapibus tempus. Praesent risus elit, eleifend a massa in, vulputate ultricies velit. Cras in diam et dolor tincidunt eleifend quis et enim. Phasellus.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}





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


