import 'package:flutter/material.dart';
import 'package:tubes/constant.dart';
import 'package:tubes/homepage/homepage_view.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0; //posisi terakhir bottom Nav yang dibuat
  List<Widget> _container = [
    /*berisi page sesuai dengan index dari _bottomNavCurrentIndex
    (jika ada 2 menu = array terisi 2 class yang mewakili halaman tersebut)*/
    new HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },

      currentIndex: _bottomNavCurrentIndex,

      items: [
        BottomNavigationBarItem( //Menu Home
          activeIcon: new Icon(
            Icons.home,
            color: Colors.black,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Home',
          ),
        ),

        BottomNavigationBarItem( //Menu Profile
          activeIcon: new Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
          icon: new Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: new Text(
            'Profile',
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.settings,
            color: Colors.black,
          ),
          icon: new Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: new Text(
            'Setting',
          ),
        ),
      ],
    );
  }
}

