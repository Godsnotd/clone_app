import 'package:clone_app/task.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
            alignment: AlignmentDirectional.topCenter,
            fit: StackFit.loose,
            children: [
              Container(
                width: 480,
                height: 570,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(10, 222, 201, 0.11),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: SizedBox(
                    width: 420,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => TaskScreen()));
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
            ],
          ),
        ],
      ),
    );
  }
}
