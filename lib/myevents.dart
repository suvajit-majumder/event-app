import 'package:event_app/components/app_bar.dart';
import 'package:event_app/main.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          MyAppBar(
            title: "My Events",
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  event(
                      picName: "assets/images/eventImage.jpg",
                      date: '29 th Nov 2020 12 pm',
                      title: 'Flutter Conference , Dart Analysis',
                      place: 'New York ,US 10010',
                      price: '500'),
                  SizedBox(height: 30),
                  event(
                      picName: "assets/images/eventimage1.jpg",
                      date: '29th Nov 2020 12 pm',
                      title: 'Flutter Conference , Dart Analysis',
                      place: 'New York ,US 10010',
                      price: '900'),
                  SizedBox(height: 30),
                  event(
                      picName: "assets/images/eventImage.jpg",
                      date: '29th Nov, 2020 12 PM',
                      title: 'Flutter Conference , Dart Analysis',
                      place: 'New York ,US 10010',
                      price: '500'),
                  SizedBox(height: 30),
                  event(
                    picName: "assets/images/eventimage1.jpg",
                    date: '29th NOv, 2020 12 PM',
                    title: 'Flutter Conference , Dart Analysis',
                    place: 'New York ,US 10010',
                    price: '500',
                  ),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget event(
      {String picName, String date, String title, String place, String price}) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
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
        child: Column(
          children: [
            Container(
              child: Image.asset(picName),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.blue,
                    // alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    // padding: EdgeInsets.only(left: 10),
                    child: Text(
                      date,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Visby",
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    // alignment: Alignment.centerLeft,
                    // color: Colors.red,
                    margin: EdgeInsets.only(top: 10),
                    // padding: EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Visby",
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      // padding: EdgeInsets.only(left: 6),
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.location_on_outlined),
                          ),
                          Container(
                            child: Text(
                              place,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Visby",
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    // padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(children: [
                      Container(
                        child: Icon(
                          Icons.face_rounded,
                          size: 34,
                        ),
                      ),
                      Container(
                        child: Icon(Icons.tag_faces_rounded, size: 34),
                      ),
                      Container(
                        child: Icon(Icons.add_ic_call_rounded, size: 34),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 28),
                        // padding: EdgeInsets.only(right: 15, bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(children: [
                                Container(
                                  height: 47,
                                  child: FlatButton(
                                    child: Text(
                                      "\$ $price",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                    color: Colors.black,
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
