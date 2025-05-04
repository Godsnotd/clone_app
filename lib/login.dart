import 'package:clone_app/home.dart';
import 'package:clone_app/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  //bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //SizedBox(height: 100),
          Row(
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
          ),
          SizedBox(height: 2),
          Text(
            'Welcome Back',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 350,
            //height: 30,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 350,
            //height: 70,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          SizedBox(height: 20),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ))),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // To create a Divider horizintally underneat the button
            children: [
              Divider(
                thickness: 2,
                indent: 3,
                height: 10,
                color: Colors.blue,
              ),
              Text('OR'),
              Divider(
                thickness: 2,
                indent: 3,
                height: 10,
                color: Colors.black,
              )
            ],
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
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont Have an account?'),
              TextButton(
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
    );
  }
}
