//import 'package:clone_app/home.dart';
import 'package:flutter/material.dart';

Widget appbartext() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.assignment_turned_in_rounded),
      Center(
          child: Text(
        'TIK',
        style: TextStyle(
          letterSpacing: 1,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
      Text(
        'TIK',
        style: TextStyle(
          letterSpacing: 1,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
      ),
    ],
  );
}

Widget homebartext() {
  return Row(
    children: [
      Icon(Icons.assignment_turned_in_rounded),
      Center(
          child: Text(
        'TIK',
        style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      )),
      Text(
        'TIK',
        style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
      ),
    ],
  );
}

// Widget addbutton(
//   // context,
//   // titleController,
// ) {
//   return SizedBox(
//     width: 312,
//     height: 42,
//     child: ElevatedButton(
//       onPressed: () {
//         Navigator.push(
//             if (titleController.text.isNotEmpty &&
//                                       textController.text.isNotEmpty,) {
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (_) => HomeScreen(
//                                                 userInput1:
//                                                     titleController.text,
//                                                 userInput2: textController.text,
//                                               ))},);

//       },
//       style: ButtonStyle(
//           backgroundColor:
//               WidgetStateProperty.all(Color.fromARGB(198, 4, 14, 87)),
//           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                   side: BorderSide(color: Colors.black45),
//                   borderRadius: BorderRadius.circular(10)))),
//       child: Text(
//         'Add Task',
//         style: TextStyle(
//             color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),
//       ),
//     ),
//   );
// }
