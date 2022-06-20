// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'models/incident.dart';
// import 'widgets/messages_list.dart';
// import 'widgets/sender_row.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late List<Incident> incidents = [];
//   final db = FirebaseFirestore.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: const Center(
//               child: Text(
//                 'Voici les derniers tickets émis',
//                 style: TextStyle(color: Colors.black),
//               )),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 MessagesList(messages: messages),
//                 SenderRow(
//                     user: 'A',
//                     color: 4282575564,
//                     sendMessage: (message) {
//                       setState(() {
//                         messages.add(message);
//                       });
//                     }),
//                 const SizedBox(
//                   height: 32,
//                 ),
//                 SenderRow(
//                     user: 'B',
//                     color: 4290859775,
//                     sendMessage: (message) {
//                       setState(() {
//                         messages.add(message);
//                       });
//                     }),
//               ],
//             ),
//           ),
//         ) // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
