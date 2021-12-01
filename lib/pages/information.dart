import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/tips.dart';
import 'package:flutter_app/widgets/selectOriginWidget.dart';
import 'package:image_picker/image_picker.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  String dropdownValue = 'Mosquito Larvae';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xBF7e63b8),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/MOHJALOGO.png',
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  height: 50.0,
                  width: width * 15 / 16,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    underline: Container(
                      height: 2,
                      color: Colors.white,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Mosquito Larvae',
                      'Stagnant Water',
                      'Mosquito Swarms',
                      'Dengue Symptoms'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                InfoTextField(
                  controller2,
                  "Contact Info",
                ),
                InfoTextField(
                  controller3,
                  "Email Address",
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: Text(
                      "Select Location",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectOriginWidget(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xBF06B4FF),
                      onSurface: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: Text(
                      "Select Image",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xBF06B4FF),
                      onSurface: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      //style: TextStyle(color: Colors.white),
                      controller: controller4,
                      maxLines: null,
                      decoration: const InputDecoration.collapsed(
                        hintText: "Description",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Thank You for Reporting"),
                              content: Text(
                                "Thank you For submitting your sighting to the Ministry of Health and Wellness. Your information has been successfully recieved. A representative of the ministry will contact you shortly. ",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Tips(),
                                      ),
                                    );
                                  },
                                  child: Text("Tips"),
                                ),
                              ],
                            );
                          },
                          context: context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xBF06B4FF),
                      onSurface: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InfoTextField(TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: hintText,
        ),
      ),
    );
  }

}
