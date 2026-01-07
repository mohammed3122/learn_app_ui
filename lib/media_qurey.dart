// import 'dart:developer';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(LearnAppUi());
// }

// class LearnAppUi extends StatelessWidget {
//   const LearnAppUi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var screenHeight = MediaQuery.of(context).size.height;
//     // var screenWidth = MediaQuery.of(context).size.height;

//     log(screenHeight.toString());
//     return MaterialApp(
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     'Learn App Ui',
//         //     style: TextStyle(color: Colors.white, fontSize: 30),
//         //   ),
//         //   backgroundColor: Colors.blue,
//         // ),
//         body: Column(
//           children: [
//             Container(
//               color: Colors.orange,
//               height: screenHeight * .3,
//               width: 300,
//             ),
//             Container(
//               color: Colors.blue,
//               height: screenHeight * .3,
//               width: 300,
//             ),
//             Container(
//               color: Colors.purple,
//               height: screenHeight * .3,
//               width: 300,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
