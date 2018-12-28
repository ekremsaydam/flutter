import 'package:flutter/material.dart';

// void main() {
//   runApp(Center(
//     child: Text("Merhaba Dünya",textDirection: TextDirection.ltr,),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     title: "My First App",
//     home: Material(
//       color: Colors.red,
//       child: Center(
//         child: Text(
//           "Hello World",
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 50.0,
//           ),
//         ),
//       ),
//     ),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     title: "My First App",
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App Bar Title"),
//       ),
//       body: Material(
//         color: Colors.red,
//         child: Center(
//           child: Text(
//             "Hello World",
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 50.0,
//             ),
//           ),
//         ),
//       ),
//     ),
//   ));
// }

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First Custom Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Custom Widget"),
        ),
        body: Material(
          color: Colors.red,
          child: Center(
            child: Text(
              "Hello World",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black, fontSize: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(HelloWorld());
}
