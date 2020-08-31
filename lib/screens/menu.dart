import 'package:flutter/material.dart';
import 'package:kebloom_app/screens/themes.dart';
import '../screens/viewStore.dart';
import 'usersColorScheme.dart';
import '../main.dart';

class Menu extends StatefulWidget {
  static const routeName = '/menu';
  @override
  State<StatefulWidget> createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {

  Widget _creativeButton() {
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
            new MaterialPageRoute(builder: (context) => new ViewStore()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('SHOP',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins')),
      ),
    );
  }

  Widget _fashionButton() {
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
            new MaterialPageRoute(builder: (context) => new ViewStore()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('STORE',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
            new MaterialPageRoute(builder: (context) => new ViewStore()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromRGBO(255, 139, 0, 1),
        child: Text('MESSAGES',
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
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
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
                            'assets/images/icons/store.png',
                            height: 71,
                            width: 78,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Hello ',
                        style: TextStyle(
                            color: Theme_Kebloom.color_blue,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 22),
                      ),
                      Text(
                        'user\'s name',
                        style: TextStyle(
                            color: Theme_Kebloom.color_orange,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 22),
                      ),
                      SizedBox(height: 20),
                      _creativeButton(),
                      SizedBox(height: 20),
                      _fashionButton(),
                      SizedBox(height: 20),
                      _nextButton(context)
                    ],
                  )),
            )
          ],
        ));
  }
  
}
