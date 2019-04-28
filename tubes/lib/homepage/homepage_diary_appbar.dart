import 'package:flutter/material.dart';

class DiaryAppBar extends AppBar {
  DiaryAppBar() :
      super(
        elevation: 0.25,
        backgroundColor: Colors.white,
        flexibleSpace: _buildDiaryAppBar(),
      );

  static Widget _buildDiaryAppBar() {
//    return new Container(
//      padding:  EdgeInsets.only(left: 16.0, right: 16.0),
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          new Image.asset(
//            "assets/img_logo.png",
//            height: 100.0,
//            width: 100.0,
//          ),
//        ],
//      )

    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      alignment: Alignment(0.0, 0.0),
      
      child:
        new Image.asset(
          "assets/img_logo.png",
          height: 100.0,
          width: 100.0,
      ),
    );

  }

}

