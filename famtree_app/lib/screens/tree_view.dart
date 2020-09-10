import 'package:flutter/material.dart';

class TreeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: SafeArea(
        child: Column(
          children: [
            //The invisible background container
            Container(
              color: Colors.transparent,
              height: 270.0,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(left: 90.0, top: 10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 45.0,
                          ),
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            radius: 45.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  //The top vertical line
                  Positioned(
                    bottom: 125.0,
                    left: 191.0,
                    child: Container(
                      height: 90.0,
                      child: VerticalDivider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 105.0,
                    left: 55.0,
                    child: Container(
                      child: Text(
                        'Kandasamy Aachari',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 105.0,
                    left: 220.0,
                    child: Container(
                      child: Text(
                        'Kamatchi Ammal',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  //The big straight horizontal line
                  Positioned(
                    left: 50.0,
                    top: 110.0,
                    child: SizedBox(
                      height: 70.0,
                      width: 300.0,
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150.0,
                    child: Container(
                      margin: EdgeInsets.only(left: 13.0, top: 20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CircleAvatar(
                            radius: 40.0,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CircleAvatar(
                            radius: 40.0,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CircleAvatar(
                            radius: 40.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //2nd Level Names
                  Positioned(
                    top: 255.0,
                    left: 28.0,
                    child: Container(
                      child: Text(
                        'Kamala ',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 255.0,
                    left: 115.0,
                    child: Container(
                      child: Text(
                        'Saraswathi ',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 255.0,
                    left: 215.0,
                    child: Container(
                      child: Text(
                        'Kuppachari',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 255.0,
                    left: 308.0,
                    child: Container(
                      child: Text(
                        'Sivaprakasam',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 13.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145.0,
                    left: 42.0,
                    child: Container(
                      height: 27.0,
                      child: VerticalDivider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145.0,
                    left: 145.0,
                    child: Container(
                      height: 27.0,
                      child: VerticalDivider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145.0,
                    left: 245.0,
                    child: Container(
                      height: 27.0,
                      child: VerticalDivider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145.0,
                    left: 342.0,
                    child: Container(
                      height: 27.0,
                      child: VerticalDivider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Cards
            Expanded(
              child: Container(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Stack(
                      children: <Widget>[
                        //Level one Row
                        Container(
                          child: Row(
                            children: [
                              //Chandra
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Bharathi
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Hemalatha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                            ],
                          ),
                        ),
                        //Names
                        Positioned(
                          top: 65.0,
                          child: Text(
                            'Chandra',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 65.0,
                          left: 105.0,
                          child: Text(
                            'Usha',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 65.0,
                          left: 190.0,
                          child: Text(
                            'Bharathi',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 65.0,
                          left: 275.0,
                          child: Text(
                            'Hemalatha',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        //Level 2 Row
                        Container(
                          margin: EdgeInsets.only(top: 90.0),
                          child: Row(
                            children: [
                              //Chandra
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Bharathi
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Hemalatha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 155.0,
                          left: 5.0,
                          child: Text(
                            'Mohan',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 155.0,
                          left: 105.0,
                          child: Text(
                            'Anbu',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 155.0,
                          left: 195.0,
                          child: Text(
                            'Elango',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 155.0,
                          left: 285.0,
                          child: Text(
                            'Manjula',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        //Level 3 Row
                        Container(
                          margin: EdgeInsets.only(top: 180.0),
                          child: Row(
                            children: [
                              //Chandra
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Bharathi
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Hemalatha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 245.0,
                          left: 10.0,
                          child: Text(
                            'Mano',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 245.0,
                          left: 100.0,
                          child: Text(
                            'Suguna',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 245.0,
                          left: 190.0,
                          child: Text(
                            'Murugan',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 245.0,
                          left: 285.0,
                          child: Text(
                            'Naveen',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        //Level 4 Row
                        Container(
                          margin: EdgeInsets.only(top: 270.0),
                          child: Row(
                            children: [
                              //Chandra
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Bharathi
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              //Hemalatha
                            ],
                          ),
                        ),
                        Positioned(
                          top: 335.0,
                          left: 13.0,
                          child: Text(
                            'Kala',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 335.0,
                          left: 100.0,
                          child: Text(
                            'Chandru',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 335.0,
                          left: 195.0,
                          child: Text(
                            'Kabilan',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),

                        //Level 5 Row
                        Container(
                          margin: EdgeInsets.only(top: 360.0, left: 95.0),
                          child: Row(
                            children: [
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              //Bharathi
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              //Hemalatha
                            ],
                          ),
                        ),

                        Positioned(
                          top: 425.0,
                          left: 100.0,
                          child: Text(
                            'Kalyani',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        Positioned(
                          top: 425.0,
                          left: 175.0,
                          child: Text(
                            'Pugazhendhi',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                        //Last Row
                        Container(
                          margin: EdgeInsets.only(
                              top: 450.0, left: 95.0, bottom: 30.0),
                          child: Row(
                            children: [
                              //Usha
                              CircleAvatar(
                                radius: 30.0,
                              ),
                              //Hemalatha
                            ],
                          ),
                        ),
                        Positioned(
                          top: 515.0,
                          left: 105.0,
                          child: Text(
                            'Indra',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                height: 100.0,
                width: 380.0,
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
