import 'package:clone_app/step.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => TaskScreenState();
}

class TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        shape: Border.all(),
        backgroundColor: Color.fromARGB(198, 4, 14, 87),
        titleSpacing: 7,
        title: Row(
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
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.red,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 10, bottom: 20),
            child: Row(
              children: [
                Icon(
                  Icons.change_circle_sharp,
                  color: Colors.blue,
                ),
                SizedBox(width: 5),
                Text(
                  'To Start',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            fit: StackFit.loose,
            children: [
              Column(
                //verticalDirection: VerticalDirection.down,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 480,
                      height: 570,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(10, 222, 201, 0.11),
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: SizedBox(
                    width: 420,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => StepScreen()));
                        },
                        style: ButtonStyle(
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.black45),
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                color: Colors.black54,
                                Icons.add_circle_outline_rounded,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: Text(
                                'Add New',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 17),
                              ),
                            ),
                          ],
                        ))),
              ),
              Positioned(
                  top: 20,
                  child: SizedBox(
                      width: 420,
                      height: 250,
                      child: TextField(
                          maxLength: 400,
                          maxLines: 10,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            //constraints: BoxConstraints.tight(Size(350, 30)),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            contentPadding:
                                EdgeInsets.only(left: 30, right: 20),
                            suffix: IconButton(
                              onPressed: () {
                                // PopupMenuButton(itemBuilder: );
                              },
                              icon: Icon(Icons.menu_rounded),
                            ),
                            label: Text('Tittle'),
                          )))),
            ],
          ),
        ],
      ),
    );
  }
}
