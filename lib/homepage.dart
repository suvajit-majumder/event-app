import 'package:event_app/categories.dart';
import 'package:event_app/eventdetails.dart';
import 'package:event_app/filter.dart';
import 'package:event_app/myevents.dart';
import 'package:event_app/notifications.dart';
import 'package:event_app/settings.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var child;
    return Scaffold(
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 10),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/images/CR.jpg',
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Cristiano Ronaldo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text("New York US, 10010")),
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.navigate_next_outlined,
                    ),
                  ),
                ],
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.grey,
                  height: 2,
                ),
              ),
            ]),
            // drawerCard(icon: Icons.category_outlined, name: "Categories"),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Myevents())));
              },
              child: drawerCard(icon: Icons.calendar_month, name: "My Event"),
            ),
            drawerCard(icon: Icons.calendar_month, name: "Past Event"),
            drawerCard(icon: Icons.feedback, name: "Feedback"),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => settings())));
              },
              child: drawerCard(icon: Icons.settings, name: "Settings"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Eventdetails()));
              },
              child: drawerCard(icon: Icons.contact_mail, name: "Conatct Us"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => categories()));
              },
              child:
                  drawerCard(icon: Icons.category_outlined, name: "Categories"),
            ),
            drawerCard(icon: Icons.help, name: "Help"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.indigo,
                        ),
                        child: Icon(Icons.menu, color: Colors.white),
                      ),
                      GestureDetector(
                          child: Icon(Icons.notifications),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Notifications()));
                          }),
                    ]),
              ),
              Container(
                // color: Colors.red,
                child: Text(
                  'Welcome Mario',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Visby",
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              Container(
                // color: Colors.green,
                margin: EdgeInsets.only(top: 12, bottom: 22),
                child: Text(
                  "Find trending events",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Visby",
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Container(
                child: Row(children: [
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Search Events",
                          style: TextStyle(fontFamily: "Visby"),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.indigo),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      child: Icon(
                        Icons.filter_list_outlined,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (Context) => Filter()));
                      },
                    ),
                  ),
                ]),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 22, bottom: 22),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: "Visby",
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.more_horiz_outlined,
                          size: 45,
                        ),
                      ),
                    ]),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    tagbox(name: "Tech"),
                    tagbox(name: "Sports"),
                    tagbox(name: "Talk"),
                    tagbox(name: "Tech"),
                    tagbox(name: "Sports"),
                    tagbox(name: "Talk"),
                  ]),
                ),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 22, bottom: 22),
                        child: Text(
                          'Popular Events',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: "Visby",
                              color: Colors.indigo),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.more_horiz_outlined, size: 43),
                      )
                    ]),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    postContainer('29th Nov, 2020 12 PM',
                        picName: "assets/images/eventImage.jpg",
                        title: 'Flutter Conference , Dart Analysis',
                        place: 'New York ,US 10010',
                        price: '500'),
                    postContainer('29th Nov, 2020 12 PM',
                        picName: "assets/images/eventimage1.jpg",
                        title: 'Flutter Conference , Dart Analysis',
                        place: 'New York ,US 10010',
                        price: '900'),
                    postContainer("date",
                        picName: "assets/images/eventImage.jpg",
                        // date: '29th Nov, 2020 12 PM',
                        title: 'Flutter Conference , Dart Analysis',
                        place: 'New York ,US 10010',
                        price: '500'),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tagbox({String name}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 27),
      child: Text(
        name,
        style:
            TextStyle(fontSize: 14, fontFamily: "Visby", color: Colors.indigo),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 3, color: Colors.indigo),
      ),
    );
  }

  Widget postContainer(String date,
      {String picName, String title, String place, String price}) {
    return Container(
      // padding: EdgeInsets.only(top: 150),
      margin: EdgeInsets.only(top: 85, right: 20, bottom: 20),
      child: Stack(
        // fit: StackFit.loose,
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            // padding: EdgeInsets.only(left: 10),
            // margin: EdgeInsets.only(top: 150),
            height: 300.0,
            width: 280,
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
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 100),
                  padding: EdgeInsets.only(left: 10),
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
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 10),
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
                    padding: EdgeInsets.only(left: 6),
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
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                    Container(
                      margin: EdgeInsets.only(left: 28),
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
          ),
          Positioned(
            top: -75,
            child: Container(
              child: Image.asset(
                picName,
                height: 170,
                width: 230,
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
    );
  }

  Widget drawerCard({
    IconData icon,
    String name,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
