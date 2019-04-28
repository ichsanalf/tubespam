import 'package:flutter/material.dart';
import 'dart:async';
import 'package:tubes/landingpage/landingpage_view.dart';

class LauncherPage extends StatefulWidget{
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    ///method ini mirip seperti onCreate()
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 1); //set durasi untuk splashscreen
    return new Timer(duration, ()
    {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        /* push, pushReplaceName, pushReplacement = cara berpindah halaman.
        menggunakan pushReplacement karena jika user menekan back maka activity sebelumnya
        tidak akan ditampilkan lagi atau finish.
        */
        return new LandingPage();
        /* akan memanggil class setTimer pada initState,
        pada timer terdapat fungsi yang akan dijalankan ketika timer selesai
        */
      }));
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "asset/img_logo.png", //memanggil logo image pada assets
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }

}



