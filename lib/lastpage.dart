import 'package:flutter/material.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => LastScreeenState();
}

class LastScreeenState extends State<LastScreen> {
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
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        labelText: 'Search....',
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_circle_outlined)),
                SizedBox(width: 2),
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
                  color: Colors.yellow,
                ),
                SizedBox(width: 5),
                Text(
                  'In Progress',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            fit: StackFit.loose,
            children: [
              Column(
                //verticalDirection: VerticalDirection.down,
                children: [
                  Container(
                    width: 480,
                    height: 570,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(10, 222, 201, 0.11),
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 420,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 185,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (_) => TaskScreen()));
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
                                                  BorderRadius.circular(7)))),
                                  child: Text(
                                    'Update Task',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 17),
                                  ),
                                )),
                            SizedBox(width: 10),
                            SizedBox(
                                width: 185,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (_) => TaskScreen()));
                                  },
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.black45),
                                              borderRadius:
                                                  BorderRadius.circular(7)))),
                                  child: Text(
                                    'Cancel Task',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 17),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                width: 380,
                                height: 40,
                                child: TextField(
                                    // maxLength: 20,
                                    // maxLines: 1,
                                    decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  //constraints: BoxConstraints.tight(Size(350, 30)),
                                  labelStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  contentPadding:
                                      EdgeInsets.only(left: 20, right: 20),

                                  label: Text('Tittle'),
                                ))),
                            SizedBox(height: 10),
                            SizedBox(
                                width: 380,
                                height: 160,
                                child: TextField(
                                    maxLength: 200,
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      //constraints: BoxConstraints.tight(Size(350, 30)),
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      contentPadding:
                                          EdgeInsets.only(left: 20, right: 20),

                                      label: Text('Description'),
                                    )))
                          ],
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
