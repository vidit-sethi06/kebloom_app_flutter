import 'package:flutter/material.dart';
import 'package:kebloom_app/screens/themes.dart';
import 'usersColorScheme.dart';
import '../main.dart';

class ViewStore extends StatefulWidget {
  static const routeName = '/viewStore';
  @override
  State<StatefulWidget> createState() {
    return new ViewStoreState();
  }
}

class ViewStoreState extends State<ViewStore> {
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
            new MaterialPageRoute(builder: (context) => new UsersColorScheme()),
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
            new MaterialPageRoute(builder: (context) => new UsersColorScheme()),
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
            new MaterialPageRoute(builder: (context) => new UsersColorScheme()),
          );
        },
        // onPressed
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Theme_Kebloom.color_orange,
        child: Text('EDIT STORE',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins')),
      ),
    );
  }

  Widget _addProductButton(BuildContext context) {
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
        color: Theme_Kebloom.color_blue,
        child: Text('ADD PRODUCT',
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
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                    'Store name',
                    style: TextStyle(
                        color: Theme_Kebloom.color_orange,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                  Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new SizedBox(
                            height: 200.0,
                            width: 100.0,
                            child: Image.asset(
                              'assets/images/product.png',
                              height: 71,
                              width: 78,
                            ),
                          ),
                          new Container(
                            width: 20.0,
                          ),
                          new Column(children: <Widget>[
                            new Row(children: <Widget>[
                              Text(
                                '\$',
                                style: TextStyle(
                                    color: Theme_Kebloom.color_blue,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22),
                              ),
                              Text(
                                'price',
                                style: TextStyle(
                                    color: Theme_Kebloom.color_blue,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22),
                              ),
                            ]),
                            Text(
                                'Product title',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ])
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(height: 20),
                  //_creativeButton(),
                  //SizedBox(height: 20),
                  //_fashionButton(),
                  SizedBox(height: 20),
                  _nextButton(context),
                  SizedBox(height: 20),
                  _addProductButton(context)
                ],
              )),
        )
      ],
    ));
  }
}
