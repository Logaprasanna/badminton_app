import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:famtree_app/widgets/carousel.dart';
import 'package:famtree_app/widgets/name_card.dart';

class AView extends StatefulWidget {
  @override
  _AViewState createState() => _AViewState();
}

class _AViewState extends State<AView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NameCard(),
          Expanded(
            child: Carroussel(),
          )
        ],
      ),
    );
  }
}
