import 'package:event_app/profile.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 3, color: Colors.indigo),
                    ),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 44,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 29,
                          color: Colors.indigo),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: 'Visby',
                            fontSize: 20,
                            color: Colors.indigo),
                      ),
                    ),
                    SizedBox(width: 233),
                    Container(
                      width: 10,
                      child: GestureDetector(
                        child: Icon(Icons.arrow_right, size: 50),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                  ),
                  SizedBox(width: 166),
                  Container(
                    width: 10,
                    child: Icon(Icons.arrow_right, size: 50),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Privacy & Policy',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                  ),
                  SizedBox(width: 130),
                  Container(
                    width: 10,
                    child: Icon(Icons.arrow_right, size: 50),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Help & Support',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                  ),
                  SizedBox(width: 139),
                  Container(
                    width: 10,
                    child: Icon(Icons.arrow_right, size: 50),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                  ),
                  SizedBox(width: 239),
                  Container(
                    width: 10,
                    child: Icon(Icons.arrow_right, size: 50),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
