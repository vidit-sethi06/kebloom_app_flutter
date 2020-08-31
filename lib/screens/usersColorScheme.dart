import 'package:flutter/material.dart';
import 'package:kebloom_app/screens/themes.dart';
import '../screens/registrationp3.dart';
import '../main.dart';
import 'menu.dart';

class UsersColorScheme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new UsersColorSchemeState();
  }
}

class UsersColorSchemeState extends State<UsersColorScheme> {

  int number = 0;

  void subtractNumbers() {
    setState(() {
      number = number - 1;
    });
  }

  void addNumbers() {
    setState(() {
      number = number + 1;
    });
  }

  Widget _nextButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      width: 190,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          //=> print("Login button pressed"),
          //Navigator.pop(context);
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new Menu()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('READY!',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins')),
      ),
    );
  }

  /*Widget _pageTitle() {
    return Container(
        alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                text: 'Choose your store\'s ',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w800,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'colour scheme',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        color: Colors.orange,
                      )),
                  // can add more TextSpans here...
                ],
              ),
            ));
  }

   */

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        /*appBar: new AppBar(
          title: new Text("Raised Button"),
        ),
         */
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 00.0),
                    child: Container(
                        height: 1.0, width: 190.0, color: Colors.black),
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 00.0),
                    child: Container(
                      height: 2.0,
                      width: 130.0,
                      color: Theme_Kebloom.color_purple,
                    ),
                  ),
                  Image.asset(
                    'assets/images/icons/customization.png',
                    height: 71,
                    width: 78,
                  ),
                ],
              ),
              SizedBox(height: 40),
              new Text(
                'Chose your store\'s',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                ),
              ),
              new Text(
                'colour scheme',
                style: TextStyle(
                  color: Theme_Kebloom.color_orange,
                  fontSize: 22,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                ),
              ),
              /*new Text(
                '$number',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 160.0,
                  fontFamily: 'Roboto',
                ),
              ),
               */
              SizedBox(height: 20),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_orange,
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                  SizedBox(width: 5),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_red,
                    //padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                  SizedBox(width: 5),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_purple,
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_yellow,
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                  SizedBox(width: 5),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_green,
                    //padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                  SizedBox(width: 5),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    color: Theme_Kebloom.color_blue,
                    child: Container(
                      height: 70.0,
                    ),
                  ),
                ],
              ),
              /*
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: addNumbers,
                    child: new Text("Add"),
                  ),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Subtract",
                    ),
                  ),
                ],
              ),
               */
              SizedBox(height: 20),
              _nextButton(context)
            ],
          ),
        ));
  }
}
