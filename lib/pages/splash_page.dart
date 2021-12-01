import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/report.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState(){
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Here you can set what ever background color you need.
        backgroundColor: Color(0xBF7e63b8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('lib/assets/images/MOHJALOGO.png',fit: BoxFit.fitWidth,),
              ),

            ],
          ),
        ),
      ),
    );
  }
  void startTimer(){
    Timer(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>ReportPage()));
    });
  }
}