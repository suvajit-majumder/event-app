import 'package:flutter/material.dart';

class Myevents extends StatefulWidget {
  const Myevents({Key key}) : super(key: key);

  @override
  State<Myevents> createState() => _MyeventsState();
}

class _MyeventsState extends State<Myevents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ]),
      ),
    );
  }
}
