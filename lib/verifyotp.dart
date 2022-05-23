import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/app_bar.dart';

class Verifyotp extends StatefulWidget {
  const Verifyotp({Key key}) : super(key: key);

  @override
  State<Verifyotp> createState() => _VerifyotpState();
}

class _VerifyotpState extends State<Verifyotp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 310),
              child: Icon(Icons.arrow_back, size: 43, color: Colors.white),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30)),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 210),
            child: Text(
              'Verify OTP',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 23, color: Colors.indigo),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Lorem lpsum is simply dummy text of the printing',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 20, color: Colors.grey),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(right: 175),
            child: Text(
              'Mario@gmail.com',
              style: TextStyle(
                  fontFamily: 'Visby', color: Colors.indigo, fontSize: 18),
            ),
          ),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text(
              'Enter OTP',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 18, color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(children: [
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Container(
                child: Text(
                  'Dont receive the OTP?',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Visby',
                      fontSize: 20,
                      color: Colors.indigo),
                ),
              ),
            ]),
          ),
          SizedBox(height: 41),
          Container(
            margin: EdgeInsets.only(right: 10, left: 15),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
            // color: Colors.indigo,
            height: 60,
            width: 190,
            child: Text('Verify',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 20, color: Colors.white)),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ]),
      ),
    );
  }
}
