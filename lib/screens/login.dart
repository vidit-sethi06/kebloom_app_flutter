import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';
import '../screens/registration.dart';
import 'package:http/http.dart' as http;

enum AuthMode { Registration, Login }

class LoginPage extends StatelessWidget {
  static const routeName = '/login';


 /* Widget _forgotPassword() {
    return Container(
        alignment: Alignment.center,
        child: FlatButton(
            onPressed: () => print("Forgot password pressed"),
            padding: EdgeInsets.only(left: 120),
            child: Text.rich(
              TextSpan(
                text: 'Forgot ',
                style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                children: <TextSpan>[
                  TextSpan(
                      text: 'password',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: '?')
                  // can add more TextSpans here...
                ],
              ),
            )));
  }   */


  /* Widget _notRegistered(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FlatButton(
            onPressed: () {
              print("Register now pressed");
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new RegistrationPage()),
              );
            },
            padding: EdgeInsets.only(right: 0),
            child: Text.rich(
              TextSpan(
                text: 'Not registered yet?\n ',
                style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                children: <TextSpan>[
                  TextSpan(
                      text: 'REGISTER NOW\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: 'or logging using')
                  // can add more TextSpans here...
                ],
              ),
            )));
  }
*/
   /* Widget _facebookLogin() {
    return Container(
        width: 270,
        height: 40,
        child: new Row(children: <Widget>[
          new RaisedButton(
              elevation: 0,
              onPressed: () => print("Login facebook pressed"),
              padding: EdgeInsets.all(0),
              color: Color.fromRGBO(255, 255, 255, 0),
              child: Image.asset(
                'assets/images/logos/facebook.png',
                width: 40,
                height: 40,
              )),
          new RaisedButton(
              elevation: 0,
              onPressed: () => print("Login facebook pressed"),
              padding: EdgeInsets.all(0),
              color: Color.fromRGBO(255, 255, 255, 0),
              child: Image.asset(
                'assets/images/logos/google_plus.png',
                width: 40,
                height: 40,
              )),
          new RaisedButton(
              elevation: 0,
              onPressed: () => print("Login twitter pressed"),
              padding: EdgeInsets.all(0),
              color: Color.fromRGBO(255, 255, 255, 0),
              child: Image.asset('assets/images/logos/twitter.png',
                  width: 40, height: 40))
        ]));
  } */

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logos/artboard1.png',
                        height: 119,
                        width: 249,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Hello',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 36),
                      ),
                      SizedBox(height: 0),
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      Flexible(
                        child: AuthCard(),
                      ),
                      //SizedBox(height: 20),
                      //_buildUsername(),
                      //SizedBox(height: 0),
                      //_buildPassword(),
                      //SizedBox(height: 0),
                     // _forgotPassword(),
                    //  SizedBox(height: 10),
                     // _loginButton(context),
                    //  SizedBox(height: 10),
                      //_notRegistered(context),
                     // SizedBox(height: 10),
                      //_facebookLogin(),
                    ],
                  )),
            )
          ],
        ));
  }
}
class AuthCard extends StatefulWidget {
  const AuthCard({
    Key key,
  }) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}
class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();


  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    if (_authMode == AuthMode.Login) {
      // Log user in
    } else {
      // Sign user up
      await Provider.of<Auth>(context, listen: false).signup(
        _authData['email'],
        _authData['password'],
      );
    }
    setState(() {
      _isLoading = false;
    });
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Registration;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
return Card(
  child: Container(
    child: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: 250,
              height: 60,
              child:
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // ignore: missing_return
                  validator: (value) {
                   if (value.isEmpty || !value.contains('@')) {
                     return 'Invalid email!';
                  }
                 },
                  onSaved: (value) {
                    _authData['email'] = value;
                  },
                  style: TextStyle(
                      color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(Icons.email, color: Colors.black),
                      hintText: 'Email')
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                width: 250,
                height: 60,
            child:
            TextFormField(
              obscureText: true,
              controller: _passwordController,
                style: TextStyle(
                    color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    hintText: 'password'),
                // ignore: missing_return
                validator: (value) {
                if (value.isEmpty || value.length < 8) {
                  return 'Password is too short!';
                }
              },
              onSaved: (value) {
                _authData['password'] = value;
              },
            ),
            ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0),
            width: 190,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                print("Login button pressed");
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              color: Color.fromRGBO(255, 139, 0, 1),
              child: Text('LOGIN',
                  style: TextStyle(

                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins')),
            ),

    ),
        ],
  ),
      ),
    ),
  ),
);


  }
}
  class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('First Route'),
  ),
  body: Center(
  child: RaisedButton(
  child: Text('Open route'),
  onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => RegistrationPage()),
  );
  },
  ),
  ),
  );
  }
  }

  class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Second Route"),
  ),
  body: Center(
  child: RaisedButton(
  onPressed: () {
  // Navigate back to first route when tapped.
  },
  child: Text('Go back!'),
  ),
  ),
  );
  }
  }

