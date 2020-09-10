import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/bwcard.dart';

class Suguna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: SafeArea(
        child: Column(
          children: [
            //blue container
            Expanded(
              child: Container(
                color: Color(0xff68b0ab),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 120.0,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Suguna',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 30.0),
                    ),
                    //image container
                    Container(
                      margin: EdgeInsets.only(right: 250.0, top: 30.0),
                      height: 60.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        children: [
                          Text(
                            '13',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 30.0),
                          ),
                          Text(
                            'Photos',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Montserrat'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffEBEBEB),
                child: ListView(children: [
                  Column(
                    children: [
                      BWCard(
                        title: 'Karthik',
                        topValue: 10.0,
                        color: Color(0xff6C6C6C),
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BWCard(
                        title: 'Suresh',
                        color: Colors.white,
                        bottomValue: 20.0,
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BWCard(
                        title: 'Rajesh',
                        color: Color(0xff6C6C6C),
                        bottomValue: 20.0,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
