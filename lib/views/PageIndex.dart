import 'package:flutter/material.dart';

import '../components/background.dart';
import 'package:sdm_project/views/ShowCat.dart';

class PageIndex extends StatefulWidget {
  @override
  _PageIndexState createState() => _PageIndexState();
}

class _PageIndexState extends State<PageIndex> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController sexController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
      ),
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Add Cat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            //name
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Name :",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              // decoration: kBoxDecorationStyle,
              height: 60.0,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
                controller: nameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.adjust,
                    color: Colors.black,
                  ),
                  hintText: 'Enter the name of the cat',
                ),
              ),
            ),

            //DOB
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Date of Birth :",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              // decoration: kBoxDecorationStyle,
              height: 60.0,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
                controller: dobController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.adjust,
                    color: Colors.black,
                  ),
                  hintText: 'Enter Date of Birth',
                ),
              ),
            ),
//sex
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Sex :",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              // decoration: kBoxDecorationStyle,
              height: 60.0,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
                controller: sexController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.adjust,
                    color: Colors.black,
                  ),
                  hintText: 'Enter sex of the cat',
                ),
              ),
            ),

            //button
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ShowCat()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(colors: [
                      Color.fromARGB(255, 255, 136, 34),
                      Color.fromARGB(255, 255, 177, 41)
                    ]),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "ADD",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
