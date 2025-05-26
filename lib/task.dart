// import 'package:clone_app/custom_widgets.dart';
// import 'package:clone_app/lastpage.dart';
// import 'package:flutter/material.dart';

// class TaskScreen extends StatefulWidget {
//   const TaskScreen(
//       {super.key, required this.userInput1, required this.userInput2});
//   final String userInput1;
//   final String userInput2;
//   @override
//   State<TaskScreen> createState() => TaskScreenState();
// }

// class TaskScreenState extends State<TaskScreen> {
//   String title = 'popupmenu';
//   String item1 = 'Edit';
//   String item2 = 'Delete';
//   String item3 = 'Undo';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         //shape: Border.all(),
//         backgroundColor: Color.fromARGB(198, 4, 14, 87),
//         titleSpacing: 7,
//         title: homebartext(),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.account_circle_rounded,
//                 color: Colors.red,
//               ))
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 90, left: 10, bottom: 20),
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.change_circle_sharp,
//                   color: Colors.blue,
//                 ),
//                 SizedBox(width: 5),
//                 Text(
//                   'To Start',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//                 ),
//               ],
//             ),
//           ),
//           buildTodoCon(context),
//         ],
//       ),
//     );
//   }

// }
