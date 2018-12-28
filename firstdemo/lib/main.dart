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

void main() {
  runApp(MaterialApp(
    title: "My First App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("App Bar Title"),
      ),
      body: Material(
        color: Colors.red,
        child: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 50.0,
            ),
          ),
        ),
      ),
    ),
  ));
}
