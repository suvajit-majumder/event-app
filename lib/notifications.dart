import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Container(
            child: Row(children: [
              Container(
                height: 55,
                width: 55,
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 3, color: Colors.indigo),
                ),
                child: GestureDetector(
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 44),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(width: 20),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontFamily: 'Visby',
                    fontSize: 23,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 25),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                tagbox(
                  picName: "assets/images/musicevent.jpg",
                  date: '29th Nov, 2020 12 PM',
                  title: 'Flutter GetX Event',
                  place: 'New Delhi ,IN 38520',
                ),
                tagbox(
                  picName: "assets/images/musicevent.jpg",
                  date: '29th Nov, 2020 12 PM',
                  title: 'Flutter GetX Event',
                  place: 'New Delhi ,IN 38520',
                ),
                tagbox(
                  picName: "assets/images/musicevent.jpg",
                  date: '29th Nov, 2020 12 PM',
                  title: 'Flutter GetX Event',
                  place: 'New Delhi,IN 38520',
                ),
                tagbox(
                  picName: "assets/images/musicevent.jpg",
                  date: '29th Nov, 2020 12 PM',
                  title: 'Flutter GetX Event',
                  place: 'New Delhi ,IN 38520',
                ),
                tagbox(
                  picName: "assets/images/musicevent.jpg",
                  date: '29th Nov, 2020 12 PM',
                  title: 'Flutter GetX Event',
                  place: 'New Delhi ,IN 38520',
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  Widget tagbox(
      {String picName, String name, String date, String place, String title}) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 170),
            height: 100,
            child: Image.asset('assets/images/musicevent.jpg'),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: 20),
          Container(
            margin: EdgeInsets.only(bottom: 160),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(right: 80),
                child: Text(
                  'Flutter GetX Event',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 20, color: Colors.indigo),
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(right: 80),
                child: Text(
                  '29th Nov, 2020, 12:00 PM',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 15, color: Colors.indigo),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Icon(Icons.location_pin),
                  ),
                  SizedBox(width: 5),
                  Container(
                    margin: EdgeInsets.only(right: 29, bottom: 30),
                    child: Text(
                      'New Delhi, IN3850',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 15,
                          color: Colors.indigo),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      '24 Oct 2021',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 10,
                          color: Colors.indigo),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
