import 'package:clone_app/custom_widgets.dart';
import 'package:clone_app/home.dart';
import 'package:clone_app/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  //final textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 100),
            appbartext(),
            //SizedBox(height: 1),
            Text(
              'Welcome Back',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   child:
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
            // ),
            SizedBox(height: 15),
            // SizedBox(
            //   width: 350,
            //   //height: 70,
            //   child:
            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
            //),
            SizedBox(height: 15),
            SizedBox(
                width: 350,
                height: 42,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Color.fromARGB(198, 4, 14, 87)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black45),
                                borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {
                      if (email.text.contains('@') &&
                              email.text.contains('.') &&
                              password.text.length >= 12
                          //contains('#[A-Z]r', 0)
                          ) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => HomeScreen(
                                    // userInput1: '',
                                    // userInput2: '',
                                    )));
                      }
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ))),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // To create a Divider horizintally underneat the button
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      endIndent: 4,
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  Text('OR'),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    indent: 4,
                    height: 10,
                    color: Colors.black,
                  )),
                ],
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
                width: 350,
                height: 42,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(3),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black45),
                                borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          //color: Colors.green,
                          Icons.g_mobiledata_outlined,
                          size: 30,
                        ),
                        Text(
                          'Log in With Google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ))),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an account?"),
                TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignupScreen()));
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
