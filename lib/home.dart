import 'package:clone_app/custom_widgets.dart';
import 'package:clone_app/step.dart';
import 'package:clone_app/task.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    // required this.userInput1, required this.userInput2
  });
  // final String userInput1;
  // final String userInput2;
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // String things = 'popupmenu';
  dynamic item1 = 'Edit';
  String item2 = 'Delete';
  List<dynamic> todoItems = [];
  // final SafeArea = true;

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
                padding: const EdgeInsets.all(10),
                child: Container(
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 222, 201, 0.11),
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return buildTodoCon(
                              todoItems[index]["title"],
                              todoItems[index]["description"],
                              todoItems[index]["date"]);
                        },
                        // building you the entire length od the list given
                        itemCount: todoItems.length,
                      ),
                      Padding(
                          //giving it a  fixed height and width
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => StepScreen(
                                                //userInput1: item2,
                                                )))
                                    // sendindg value from the first screen
                                    .then((value) {
                                  if (value != null) {
                                    setState(() {
                                      todoItems.add(value);
                                    });
                                  }
                                });
                              },
                              style: ButtonStyle(
                                  //changing the Style shape of the elevated button
                                  shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          side:
                                              BorderSide(color: Colors.black45),
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Row(
                                //creating padding space between icon and text in a button
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

  Container buildTodoCon(String title, String description, dynamic date) {
    return Container(
      child: Column(
        //verticalDirection: VerticalDirection.down,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: Container(
          //     width: 480,
          //     height: 570,
          //     decoration: BoxDecoration(
          //         color: Color.fromRGBO(10, 222, 201, 0.11),
          //         borderRadius: BorderRadius.circular(7)),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                //alignment: AlignmentDirectional(2, 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                width: 320,
                height: 280,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text(description, style: TextStyle(fontSize: 15)),
                          Text(
                            "$date",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuButton(
                        //routeSettings: item1,
                        useRootNavigator: true,
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                value: item1,
                                child: Text(item1),
                              ),
                              PopupMenuItem(
                                value: item2,
                                child: Text(item2),
                              ),
                            ],
                        onSelected: (userInput) {
                          setState(() {
                            //item2 = things;
                            // item1 = {"description"};
                            item1 = userInput;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => StepScreen(
                                      //userInput1: item1,
                                      )));
                        },
                        color: Colors.white,
                        icon: Icon(Icons.more_vert)),
                  ],
                )),
          ),
          //SizedBox(height: 15)
        ],
      ),
    );
  }
}
