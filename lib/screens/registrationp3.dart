import 'package:flutter/material.dart';
import '../main.dart';
//import 'registrationp2.dart';
//import 'registration.dart';
import 'themes.dart';
import 'usersColorScheme.dart';

class RegistrationP3Page extends StatelessWidget {
  static const routeName = '/registration3';


  Widget _creativeButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        elevation: 3,
        onPressed: () => print("Creative button pressed"),
        // onPressed
        //padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('creative',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins')),
      ),
    );
  }

  Widget _fashionButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        elevation: 3,
        onPressed: () => print("Creative button pressed"),
        // onPressed
        //padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('fashion',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins')),
      ),
    );
  }

  Widget _originalButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        elevation: 3,
        onPressed: () => print("Creative button pressed"),
        // onPressed
        //padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('original',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Poppins')),
      ),
    );
  }

  Widget _modernButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        elevation: 3,
        onPressed: () => print("Creative button pressed"),
        // onPressed
        //padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('modern',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins')),
      ),
    );
  }


  Widget _funButton() {
    bool changed = true;
    Color funInactive = Color.fromRGBO(80, 80, 80, 1);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        elevation: 3,
        //onPressed: () => print("Creative button pressed"),
        onPressed: (){
          changed = !changed;
        },
        // onPressed
        //padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: changed? funInactive : Theme_Kebloom.color_green,
        child: Text('fun',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins')),
      ),
    );
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
            new MaterialPageRoute(builder: (context) => new UsersColorScheme()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('NEXT >',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/backgrounds/orange.png"),
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomLeft)),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 00),
              child: Column(
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
                          color: Theme_Kebloom.color_yellow,
                        ),
                      ),
                      Image.asset(
                        'assets/images/icons/edition_yellow.png',
                        height: 71,
                        width: 78,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Choose up to 3 words\n that define the ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                  Text(
                    'store name',
                    style: TextStyle(
                        color: Theme_Kebloom.color_yellow,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  _creativeButton(),
                  SizedBox(height: 5),
                  _fashionButton(),
                  SizedBox(height: 5),
                  _originalButton(),
                  SizedBox(height: 5),
                  _modernButton(),
                  SizedBox(height: 5),
                  _funButton(),
                  SizedBox(height: 20),
                  _nextButton(context),
                  SizedBox(height: 10),
                ],
              )),
        )
      ],
    ));
  }
}
