import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  final String title;
  const MyAppBar({Key key, this.title}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, right: 19),
      child: Row(children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.indigo),
          child: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ),
        SizedBox(width: 19),
        Container(
          child: Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'Visby', fontSize: 26, color: Colors.indigo),
          ),
        ),
      ]),
    );
  }
}
