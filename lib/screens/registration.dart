import 'package:flutter/material.dart';
import 'registrationp2.dart';
class RegistrationPage extends StatelessWidget {
  static const routeName = '/registration';

  Widget _buildName() {
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
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'Name')),
        ),
      ],
    );
  }

  Widget _buildDOB() {
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
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'Date of Birth')),
        ),
      ],
    );
  }

  Widget _buildEmail() {
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
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'E-mail')),
        ),
      ],
    );
  }

  Widget _buildPhoneNumber() {
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
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'Phone Number')),
        ),
      ],
    );
  }

  Widget _buildRegisterPassword() {
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
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.only(top: 14, left: 10),
                  hintText: 'password')),
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
            new MaterialPageRoute(builder: (context) => new RegistrationP2Page()),
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
                      image: AssetImage("assets/images/backgrounds/blue.png"),
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
                                width:130.0,
                                color: Colors.black
                            ),
                          ),
                          Image.asset(
                            'assets/images/icons/registration.png',
                            height: 71,
                            width: 78,
                          ),

                        ],

                      ),

                      SizedBox(height: 10),
                      Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Welcome to',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                                fontSize: 24),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/logos/artboard1.png',
                                height: 71,
                                width: 78,
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],

                      ),
                      //SizedBox(height: 0),
                      Text(
                        'Please fill in the following information:',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildName(),
                      SizedBox(height: 0),
                      _buildDOB(),
                      SizedBox(height: 0),
                      _buildPhoneNumber(),
                      SizedBox(height: 0),
                      _buildEmail(),
                      SizedBox(height: 0),
                      _buildRegisterPassword(),
                      SizedBox(height: 20),
                      _nextButton(context),
                    ],
                  )),
            )
          ],
        ));
  }

}