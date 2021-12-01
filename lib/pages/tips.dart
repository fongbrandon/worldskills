import 'package:flutter/material.dart';
import 'package:flutter_app/pages/report.dart';

class Tips extends StatelessWidget {
  const Tips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xBF643EB4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/MOHJALOGO.png'),
            Text(
              "Remove Mosquito Habitats!",
              style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
        new ListTile(
            leading: new MyBullet(),
            title: Text("Eliminate standing water in rain gutters, old tires,buckets, or any other container where mosquitoes can breed.",
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.white)),
        ),
        new ListTile(
          leading: new MyBullet(),
          title: Text("Empty and change the water in bird baths, fountains,rain barrels, and plant trays at least once a week to destroy potential mosquito habitats.",
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.white)),
        ),
        new ListTile(
            leading: new MyBullet(),
            title: Text("Drain or fill temporary pools of water with dirt.",
              textAlign: TextAlign.center,
                style: TextStyle(color:Colors.white)),
        ),
        new ListTile(
            leading: new MyBullet(),
            title: Text("Keep swimming pool water treated and circulating.",
              textAlign: TextAlign.center,
                style: TextStyle(color:Colors.white)),
        ),
            SizedBox(
              child: ElevatedButton(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReportPage(),
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
          ]
      )
    );
  }
}
class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}