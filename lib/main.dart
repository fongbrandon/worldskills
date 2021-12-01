import 'package:flutter/material.dart';
import 'package:flutter_app/pages/splash_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mosquito Prevention App",
        home: SplashPage(),
    );
  }
}


