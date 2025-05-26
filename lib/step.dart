//import 'package:clone_app/lastpage.dart';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:clone_app/custom_widgets.dart';
//import 'package:clone_app/home.dart';
//import 'package:clone_app/task.dart';
import 'package:flutter/material.dart';

class StepScreen extends StatefulWidget {
  const StepScreen({
    super.key,
    //required this.userInput1,
  });
  //final String userInput1;

  @override
  State<StepScreen> createState() => StepScreenState();
}

class StepScreenState extends State<StepScreen> {
  final textController = TextEditingController();
  final titleController = TextEditingController();
  final dynamic myTime =
      (DateTime.now().month, DateTime.now().day, DateTime.now().year);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //shape: Border.all(),
        backgroundColor: Color.fromARGB(198, 4, 14, 87),
        titleSpacing: 7,
        title: homebartext(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.red,
              ))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      //flex: 10,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            labelText: 'Search....',
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.calendar_month_outlined)),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.change_circle_sharp,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'To Start',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Container(
                  // width: 480,
                  height: 570,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 222, 201, 0.11),
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          // width: 420,
                          height: 385,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            verticalDirection: VerticalDirection.up,
                            children: [
                              SizedBox(
                                width: 312,
                                height: 42,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (titleController.text.isNotEmpty &&
                                        textController.text.isNotEmpty) {
                                      Map<String, dynamic> todoValues = {
                                        "title": titleController.text,
                                        "description": textController.text,
                                        "date": myTime,
                                      };
                                      Navigator.pop(context, todoValues);
                                    }
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (_) => HomeScreen(
                                    //             userInput1:
                                    //                 titleController.text,
                                    //             userInput2: textController.text,
                                    //           )),
                                    // );
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          Color.fromARGB(198, 4, 14, 87)),
                                      shape: WidgetStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.black45),
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  child: Text(
                                    'Add Task',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 5, right: 5),
                                      child: TextField(
                                          maxLength: 30,
                                          controller: titleController,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            // contentPadding:
                                            //     EdgeInsets.only(left: 20, right: 20),
                                            hintText: 'Title',
                                            suffixIcon: IconButton(
                                                onPressed: () {
                                                  // clear whats inside the textfield currently
                                                  titleController.clear();
                                                },
                                                icon: const Icon(Icons.clear)),
                                          ))),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7,
                                      ),
                                      child: TextField(
                                          controller: textController,
                                          maxLength: 200,
                                          maxLines: 8,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            hintText: 'Description',
                                          )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
