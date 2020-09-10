import 'package:famtree_app/kuppacharichildren/Murugan.dart';
import 'package:famtree_app/kuppacharichildren/bharathi.dart';
import 'package:famtree_app/kuppacharichildren/ilango.dart';
import 'package:famtree_app/kuppacharichildren/kabilan.dart';
import 'package:famtree_app/kuppacharichildren/pugal.dart';
import 'package:famtree_app/logakamalachildren/chandra.dart';
import 'package:famtree_app/logakamalachildren/kala.dart';
import 'package:famtree_app/logakamalachildren/mano.dart';
import 'package:famtree_app/logakamalachildren/mohan.dart';
import 'package:famtree_app/sivamalligachildren/hema.dart';
import 'package:famtree_app/sivamalligachildren/manjula.dart';
import 'package:famtree_app/sivamalligachildren/naveen.dart';
import 'package:famtree_app/widgets/name_card.dart';
import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/white_card.dart';
import 'package:famtree_app/widgets/color_card.dart';

class KDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 330.0, top: 30.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          //card
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 20.0,
                      color: Colors.black.withOpacity(0.25))
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(
              left: 5.0,
            ),
            height: 100.0,
            width: 375.0,
            child: Stack(
              children: [
                Positioned(
                  top: 35.0,
                  left: 15.0,
                  child: Text(
                    'Kuppachari',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Positioned(
                  top: 31.0,
                  left: 180.0,
                  child: Text(
                    '..',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Positioned(
                  top: 18.0,
                  left: 230.0,
                  child: Text('Deivanai',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontFamily: 'Montserrat')),
                ),
                Positioned(
                  top: 50.0,
                  left: 230.0,
                  child: Text('Kasthuri',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontFamily: 'Montserrat')),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    ColorCard(
                      hName: 'Prabakaran',
                      wName: 'Bharathi',
                      color: Color(0xff59405c),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Bharathi();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Shanthi',
                      wName: 'Ilango',
                      color: Color(0xffad9d9d),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Ilango();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Murugesan',
                      wName: 'Murugan',
                      color: Color(0xffb83b5e),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Murugan();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Sasi',
                      wName: 'Kabilan',
                      color: Color(0xff62760c),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Kabilan();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Anand Prabhu',
                      wName: 'Pugazhendhi',
                      color: Color(0xffd32626),
                      fontSize: 28.0,
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Pugazhendhi();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
