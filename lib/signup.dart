import 'package:clone_app/login.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
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
          Text(
            'Join our Task',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'TikTik is the best app for your Todo tasks on Time',
            style: TextStyle(
              letterSpacing: 0.5,
            ),
          ),
          Text(
            'Todo tasks on Time',
            style: TextStyle(
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 350,
            //height: 30,
            child: TextField(
              decoration: InputDecoration(
                  //suffixIcon: Icon(Icons.search),
                  labelText: 'Name',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
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
            //height: 30,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  }),
              Text('I agree to the terms & conditons')
            ],
          ),
          SizedBox(height: 10),
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
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  ))),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black,
                thickness: 20,
                height: 10,
              ),
              Text('OR'),
              Divider(
                color: Colors.black,
                thickness: 2,
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
                        Icons.g_mobiledata_outlined,
                        size: 30,
                      ),
                      Text('Log in With Google'),
                    ],
                  ))),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Have an account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
