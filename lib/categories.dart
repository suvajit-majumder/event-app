import 'package:flutter/material.dart';
import 'homepage.dart';

class categories extends StatefulWidget {
  const categories({Key key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
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
                  'Categories',
                  style: TextStyle(
                      fontFamily: 'Visby', fontSize: 26, color: Colors.indigo),
                ),
              ),
            ]),
          ),
          SizedBox(height: 35),
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
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(right: 8, left: 0),
            padding: EdgeInsets.symmetric(horizontal: 77, vertical: 10),
            width: 220,
            height: 65,
            child: Text(
              'Save',
              style: TextStyle(
                fontFamily: 'Visby',
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Colors.indigo),
            ),
          ),
        ]),
      ),
    );
  }
}
