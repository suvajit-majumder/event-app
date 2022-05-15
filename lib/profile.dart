import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          Container(
            child: Row(children: [
              Container(
                height: 55,
                width: 55,
                margin: EdgeInsets.only(top: 70),
                // padding: EdgeInsets.only(left: 55),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 3, color: Colors.indigo),
                ),
                child: GestureDetector(
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 43),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(width: 20),
              Container(
                margin: EdgeInsets.only(top: 65),
                child: Text('Profile',
                    style: TextStyle(
                        fontFamily: 'Visby',
                        fontSize: 26,
                        color: Colors.indigo)),
              ),
            ]),
          ),
          SizedBox(height: 130),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 600.0,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, right: 120),
                    child: Text(
                      'Personal Details',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 23,
                          color: Colors.indigo),
                    ),
                  ),
                  // SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(top: 130, right: 200),
                    child: Text(
                      'First Name',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                  // SizedBox(height: 20),
                  Container(
                    width: 330,
                    margin: EdgeInsets.only(top: 160),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter first name',
                          style: TextStyle(fontFamily: 'Visby', fontSize: 15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.indigo),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 55),
                  Container(
                    margin: EdgeInsets.only(top: 240, right: 200),
                    child: Text(
                      'Last Name',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: 330,
                    margin: EdgeInsets.only(top: 270),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter last name',
                          style: TextStyle(fontFamily: 'Visby', fontSize: 15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.indigo),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 350, right: 240),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: 330,
                    margin: EdgeInsets.only(top: 380),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter Email Address',
                          style: TextStyle(fontFamily: 'Visby', fontSize: 15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.indigo),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 460, right: 200),
                    child: Text(
                      'Mobile No.',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: 330,
                    margin: EdgeInsets.only(top: 490),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter Mobile No.',
                          style: TextStyle(fontFamily: 'Visby', fontSize: 15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.indigo),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -110,
                    child: Container(
                      child: Image.asset(
                        'assets/images/Juventus.jpg',
                        height: 170,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
