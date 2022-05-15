// @dart=2.9

import 'package:event_app/filter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'homepage.dart';

class Eventdetails extends StatefulWidget {
  const Eventdetails({Key key}) : super(key: key);

  @override
  State<Eventdetails> createState() => _EventdetailsState();
}

class _EventdetailsState extends State<Eventdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, left: 10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo,
                    ),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onTap: () {
                        // Navigator.of(context).push(new MaterialPageRoute(
                        // builder: (context) => Homepage()));
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Event Details',
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: "Visby",
                          color: Colors.indigo),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Icon(
                      Icons.share,
                      color: Colors.indigo,
                      size: 40,
                    ),
                  ),
                ]),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 40),
                      // scrollDirection: Axis.horizontal,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ScrollSnapList(
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context, i) {
                          return postContainer(
                              picName: "assets/images/eventafrica.jpg");
                        },
                        itemCount: 3,
                        itemSize: MediaQuery.of(context).size.width * 0.8,
                        onItemFocus: (i) {
                          print(i);
                        },
                      ),
                      // useMagnifier: true,
                      // // perspective: 10,
                      // // offAxisFraction: 1.2,
                      // itemExtent: MediaQuery.of(context).size.width * 0.8,
                      // physics: BouncingScrollPhysics(),
                      // magnification: 1.2,
                      // children: [
                      // postContainer(
                      //   picName: 'assets/images/corporateevents.jpg',

                      //   // clipBehavior: Clip.hardEdge,
                      // ),
                      // postContainer(picName: "assets/images/eventafrica.jpg"),
                      // postContainer(picName: "assets/images/eventafrica.jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  'Flutter Conference, Dart Analysis',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 22, color: Colors.indigo),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  '29th Nov, 2020, 12:00 PM',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 15, color: Colors.grey),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        EvilIcons.location,
                        size: 30,
                      ),
                    ),
                    Container(child: Text('New York, US 10010')),
                    Spacer(),
                    Container(
                      // margin: EdgeInsets.only(left: 170),
                      child: Icon(
                        MaterialIcons.directions,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(children: [
                  Container(
                    child: Icon(
                      Icons.attach_money,
                      size: 30,
                    ),
                  ),
                  Container(
                      child: Text(
                    '500',
                    style: TextStyle(
                        fontFamily: 'Visby',
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  )),
                ]),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Attendees (10)',
                          style: TextStyle(
                            fontFamily: 'Visby',
                            fontSize: 23,
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.more_horiz),
                      ),
                    ]),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                      tagbox(picName: 'assets/images/CR.jpg', name: 'Mario'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Details',
                  style: TextStyle(
                      fontFamily: 'Visby',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  'Join us for our second Data & Drinks meet-up in NYC!This event will be an informal event to discuss'
                  'ideas for the group , and we will have a few fireside/speaker corner chatson Data Discoverability and data'
                  'Literacy . The main focus will be on networking and',
                  style: TextStyle(fontFamily: 'Visby', color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget postContainer({String picName}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 30, right: 30),
      child: Image.asset(
        picName,
        fit: BoxFit.cover,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget tagbox({String picName, String name}) {
    return Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          height: 100,
          width: 100,
          child: Image.asset(
            picName,
            fit: BoxFit.cover,
          ),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(160)),
        ),
        Container(
          child: Text(
            'Mario',
            style: TextStyle(
                fontFamily: 'Visby', fontSize: 18, color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
