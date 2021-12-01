import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'information.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xBF7e63b8),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'lib/assets/images/MOHJALOGO.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: 30.0,
                  left: width / 4,
                  right: width / 4,
                ),
                child: Image.asset(
                  'lib/assets/images/mosquito-sign.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(
                "Mosquito-borne Parasitic Report",
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  child: Text(
                    "You can use this app to report any mosquito breeding sites in your area to the authorities for cleanup as well as to find resources on vectors in your area.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  child: Text(
                    "Report",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InformationPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xBF06B4FF),
                    onSurface: Colors.white,
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
