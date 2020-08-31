import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login.dart';
import 'screens/registration.dart';
import 'screens/registrationp2.dart';
import 'screens/registrationp3.dart';
import 'screens/menu.dart';
import 'screens/themes.dart';
import 'screens/viewStore.dart';
import 'package:http/http.dart' as http;



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ],

      child: MaterialApp(
          title: 'flutter demo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: LoginPage(),
          routes: {
            RegistrationPage.routeName: (ctx) => RegistrationPage(),
            RegistrationP2Page.routeName: (ctx) => RegistrationP2Page(),
            RegistrationP3Page.routeName: (ctx) => RegistrationP3Page(),
            ViewStore.routeName: (ctx) => ViewStore(),
            Menu.routeName: (ctx) => Menu(),
          }),
    );
  }

}

