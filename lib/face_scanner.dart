import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_ml_kit/google_ml_kit.dart';
// class FaceScannerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Face Scanner'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Face Scanner',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20.0),
//             Container(
//               width: double.infinity,
//               height: MediaQuery.of(context).size.width * 0.75,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Stack(
//                 children: [
//                   AspectRatio(
//                     aspectRatio: 1.0,
//                     child: Image.asset(
//                       'assets/placeholder.svg',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned.fill(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * 0.6,
//                         height: MediaQuery.of(context).size.width * 0.6,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(100.0),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Position your face here',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Instructions:',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//                 _buildInstructionRow(Icons.person, 'Position your face in the frame'),
//                 _buildInstructionRow(Icons.remove_red_eye, 'Ensure your eyes are clearly visible'),
//                 _buildInstructionRow(Icons.sentiment_satisfied, 'Keep a neutral expression'),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Functionality to scan face
//                 },
//                 child: Text(
//                   'Scan Face',
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInstructionRow(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon),
//         SizedBox(width: 10.0),
//         Expanded(child: Text(text)),
//       ],
//     );
//   }
// }

