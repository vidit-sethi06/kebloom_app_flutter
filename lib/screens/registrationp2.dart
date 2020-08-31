import 'package:flutter/material.dart';
//import 'registration.dart';
import 'registrationp3.dart';
import 'themes.dart';

class RegistrationP2Page extends StatelessWidget{
  static const routeName = '/registration2';

  Widget _buildStoreName() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 250,
          height: 60,
          child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'Store name...')),
        ),
      ],
    );
  }

  Widget _buildStoreDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 250,
          height: 210,
          child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 10,
              maxLines: 25,
              style: TextStyle(
                  color: Colors.black, fontSize: 14, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'Store description...\n\n'
                      'example: All the products I am selling were created with'
                      'loads of love and designed by me, the colors used in the '
                      'products represent my personality. I thrilled to share my '
                      'creations with the world.')),
        ),
      ],
    );
  }

  Widget _buildProductsTypes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 250,
          height: 60,
          child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                  color: Colors.black, fontSize: 14, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'What products are you selling?')),
        ),
      ],
    );
  }

  Widget _nextButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      width: 190,
      child: RaisedButton(
        elevation: 5,
        onPressed: (){ //=> print("Login button pressed"),
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new RegistrationP3Page()),
          );
        }, // onPressed
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
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.symmetric(horizontal:10.0),
                            child:Container(
                                height:1.0,
                                width:190.0,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding:EdgeInsets.symmetric(horizontal:10.0),
                            child:Container(
                                height:1.0,
                                width:130.0,
                                color: Theme_Kebloom.color_red,
                            ),
                          ),
                          Image.asset(
                            'assets/images/icons/head.png',
                            height: 71,
                            width: 78,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Now lets setup your ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                                fontSize: 22),
                          ),
                          Text(
                            'store',
                            style: TextStyle(
                                color: Theme_Kebloom.color_red,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                                fontSize: 22),
                          ),
                        ],

                      ),
                      SizedBox(height: 20),
                      _buildStoreName(),
                      SizedBox(height: 0),
                      _buildStoreDescription(),
                      SizedBox(height: 0),
                      _buildProductsTypes(),
                      SizedBox(height: 0),
                      //_buildEmail(),
                      SizedBox(height: 0),
                      //_buildRegisterPassword(),
                      SizedBox(height: 20),
                      _nextButton(context),
                    ],
                  )),
            )
          ],
        ));
  }

}