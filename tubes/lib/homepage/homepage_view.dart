import 'package:flutter/material.dart';
import 'package:tubes/constant.dart';
import 'package:tubes/homepage/homepage_diary_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new DiaryAppBar(),
      body: new Container(),
    );
  }

}