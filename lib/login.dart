import 'package:flutter/material.dart';

import 'components/app_bar.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          SizedBox(height: 60),
          SizedBox(height: 30),
          Container(
              margin: EdgeInsets.only(right: 240),
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 35, color: Colors.indigo),
              )),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Lorem lpsum is simply dummy text of the printing ',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 19, color: Colors.grey),
            ),
          ),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.only(right: 280),
            child: Text('Email',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 20, color: Colors.grey)),
          ),
          SizedBox(height: 20),
          Container(
            child: TextField(
              decoration: InputDecoration(
                label: Text('Enter Email Address',
                    style: TextStyle(
                        fontFamily: 'Visby', fontSize: 20, color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 240),
            child: Text('Password',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 20, color: Colors.grey)),
          ),
          SizedBox(height: 20),
          Container(
            child: TextField(
              decoration: InputDecoration(
                label: Text('Password',
                    style: TextStyle(
                        fontFamily: 'Visby', fontSize: 20, color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 190),
            child: Text('Forgot password ?',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 15, color: Colors.indigo)),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 10, left: 15),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
            // color: Colors.indigo,
            height: 60,
            width: 190,
            child: Text('Login',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 20, color: Colors.white)),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Row(children: [
              Container(
                child: Text(
                  'Dont have an account?',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 20, color: Colors.indigo),
                ),
              ),
            ]),
          ),
          SizedBox(height: 25),
          Container(
            child: Row(children: [
              Expanded(
                  child: Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 3,
                      color: Colors.black)),
              Text("Or Login With"),
              Expanded(
                  child: Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 3,
                      color: Colors.black)),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 110),
            child: Row(children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(Icons.email, size: 35, color: Colors.white),
              ),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30)),
                child:
                    Icon(Icons.facebook_sharp, size: 35, color: Colors.white),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
