import 'package:event_app/categories.dart';
import 'package:event_app/login.dart';
import 'package:event_app/verifyotp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Filter extends StatefulWidget {
  const Filter({Key key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 11,
        ),
        color: Colors.white,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 10),
            child: Row(children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.indigo),
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
                  'Filter',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 26, color: Colors.indigo),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 320, top: 25),
            child: Text(
              'Date',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 23, color: Colors.indigo),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 170),
            child: Text(
              'Select Date Range',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 17, color: Colors.indigo),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2010),
                  lastDate: DateTime(2025),
                  helpText: "SELECT BOOKING DATE",
                  cancelText: "NOT NOW",
                  confirmText: "BOOK NOW");
            },
            child: Container(
              margin: EdgeInsets.only(right: 150),
              child: Text(
                '27 Oct 21 - 03 Nov 21',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 17, color: Colors.indigo),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(right: 240),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontFamily: 'Visby', fontSize: 23, color: Colors.indigo),
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(right: 10, left: 15),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                child: Text(
                  'Technology',
                  style: TextStyle(
                      fontSize: 14, fontFamily: "Visby", color: Colors.indigo),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 3, color: Colors.indigo),
                ),
              ),
              Container(
                height: 55,
                width: 110,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 26),
                child: Text(
                  'Sports',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 14, color: Colors.indigo),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 3, color: Colors.indigo),
                ),
              ),
              Container(
                height: 55,
                width: 110,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Text(
                  'Talk',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 14, color: Colors.indigo),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.indigo)),
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 50,
                width: 120,
                child: Text('Funny',
                    style: TextStyle(
                        fontFamily: 'Visby',
                        fontSize: 14,
                        color: Colors.indigo)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 3, color: Colors.indigo),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 20, left: 0),
                  padding: EdgeInsets.symmetric(horizontal: 23, vertical: 14),
                  height: 50,
                  width: 135,
                  child: Text('Devotional',
                      style: TextStyle(
                          fontFamily: 'Visby',
                          fontSize: 14,
                          color: Colors.indigo)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.indigo),
                  )),
            ]),
          ),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(right: 300),
              child: Text(
                'Prices',
                style: TextStyle(
                    fontFamily: 'Visby', fontSize: 23, color: Colors.indigo),
              )),
          SizedBox(height: 35),
          Container(
            height: 34, width: 350,
            // color: Colors.indigo,
            child: FlutterSlider(
              // handlerHeight: 34,
              values: [1000, 10000],
              trackBar: FlutterSliderTrackBar(
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                  border: Border.all(width: 3, color: Colors.blue),
                ),
                activeTrackBar: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.indigo),
              ),
              // foregroundDecoration: BoxDecoration(
              //   border: Border.all(width: 2),
              //   color: Colors.indigo,
              // ),
              rangeSlider: true,
              max: 10000,
              min: 1000,
              handler: FlutterSliderHandler(
                child: Material(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(5),
                  ),
                ),
              ),
              rightHandler: FlutterSliderHandler(
                child: Material(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 45),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Login())));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.symmetric(horizontal: 65, vertical: 15),
              height: 60,
              width: 190,
              child: Text('Apply',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 14, color: Colors.white)),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 3, color: Colors.indigo),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Verifyotp())));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.symmetric(horizontal: 65, vertical: 15),
              height: 60,
              width: 190,
              child: Text('Clear',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 14, color: Colors.white)),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 3, color: Colors.indigo),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
